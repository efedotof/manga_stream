import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:manga_stream/router/router.dart';
import 'package:manga_stream/supabase/supabase.dart';
import 'package:provider/provider.dart';


@RoutePage()
class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}


class _SplasScreenState extends State<SplasScreen> {
  final supabaseHelper = SupabaseHelper();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeHive(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final box = Hive.box('splash_box');

          bool firstentry = box.get('firstentry') ?? true;
          bool theuserisregistered = box.get('theuserisregistered') ?? false;

          if (firstentry && theuserisregistered == false) {
               AutoRouter.of(context).replace(const OnboardingRoute());
          } else if (firstentry == false && theuserisregistered == false) {
              // Переход на страницу Auth
              AutoRouter.of(context).replace(const AuthRoute());
              // context.pushRoute(const AuthRoute());
            } else if (firstentry == false && theuserisregistered) {
              // AutoRouter.of(context).replace(const MainHomeRoute());
              context.read<MangaAPI>().getAllData();
              supabaseHelper.autoLogin(context);
            }
        } else {
            log('SplashBox is null');
        }
        
        return Scaffold(
          backgroundColor: const Color(0xFFF97316),
          body: Center(
            child: Image.asset('assets/test_logo.png',
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
          ),
        );
      },
    );
  }

  Future<void> _initializeHive() async {
    await Hive.openBox('splash_box');
  }
}








