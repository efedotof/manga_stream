import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:manga_stream/MainSettingAPP/mainSettings.dart';
import 'package:manga_stream/theme/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'methods/methods.dart';
import 'router/router.dart';

void main() async {
  // Инициализация Hive
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  MainSettings mainSettings = MainSettings();

  mainSettings.registHive();
  mainSettings.openHive();

  // Инициализация Supabase
  await Supabase.initialize(
    url: mainSettings.url,
    anonKey: mainSettings.anonKey,
  );

  runApp(MultiProvider(
    providers: mainSettings.providers, 
  child: const MangaStream()));
}
//EstanteModel

class MangaStream extends StatefulWidget {
  const MangaStream({super.key});

  @override
  State<MangaStream> createState() => _MangaStreamState();
}

class _MangaStreamState extends State<MangaStream> {
  final _appRouter = AppRouter();  
  AdvertisingModel advertisingModel = AdvertisingModel();
  late Timer _timer; 

  @override
  void initState() {
    super.initState();
    advertisingModel.inits();
    advertisingModel.createInterstitialAdLoader();

    _timer = Timer.periodic(const Duration(minutes: 20), (timer) {
      log(timer.toString());
      advertisingModel.createInterstitialAdLoader();
      advertisingModel.showAd();
    });
  }


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: darkTheme,
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}

