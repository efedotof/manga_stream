
import 'dart:developer';

import 'package:yandex_mobileads/mobile_ads.dart';

class AdvertisingModel {
  late final Future<InterstitialAdLoader> _adLoader;
  InterstitialAd? _ad;

  Future inits() async {
    MobileAds.initialize();
    _adLoader = createInterstitialAdLoader();
    _loadInterstitialAd();
  }

  Future<InterstitialAdLoader> createInterstitialAdLoader() {
    return InterstitialAdLoader.create(
      onAdLoaded: (InterstitialAd interstitialAd) {
        _ad = interstitialAd;
      },
      onAdFailedToLoad: (error) {
         log(error.toString());
      },
    );
  }

  Future<void> _loadInterstitialAd() async {
    final adLoader = await _adLoader;
    await adLoader.loadAd(
        adRequestConfiguration: const AdRequestConfiguration(
            adUnitId:'R-M-8597403-1')); // for debug you can use 'demo-interstitial-yandex'
  }

  Future showAd() async {
    _ad?.setAdEventListener(
        eventListener: InterstitialAdEventListener(
      onAdShown: () {
        // Called when ad is shown.
      },
      onAdFailedToShow: (error) {
        // Called when an InterstitialAd failed to show.
        // Destroy the ad so you don't show the ad a second time.
        log(error.toString());
        _ad?.destroy();
        _ad = null;

        // Now you can preload the next interstitial ad.
        _loadInterstitialAd();
      },
      onAdClicked: () {
        // Called when a click is recorded for an ad.
      },
      onAdDismissed: () {
        // Called when ad is dismissed.
        // Destroy the ad so you don't show the ad a second time.
        _ad?.destroy();
        _ad = null;

        // Now you can preload the next interstitial ad.
        _loadInterstitialAd();
      },
      onAdImpression: (impressionData) {
        // Called when an impression is recorded for an ad.
      },
    ));
    await _ad?.show();
    await _ad?.waitForDismiss();
  }
}
