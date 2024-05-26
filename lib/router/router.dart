import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:manga_stream/featers/ChoosingCategories/chosingcategories.dart';
import 'package:manga_stream/featers/CommentsScreen/comments.dart';
import 'package:manga_stream/featers/DiscriptionScreen/discription.dart';
import 'package:manga_stream/featers/Main_home/mainhome.dart';
import 'package:manga_stream/methods/methods.dart';

import '../featers/Auth/auth.dart';
import '../featers/CapitulosScreen/capitulos.dart';
import '../featers/FiltrosScreen/filtros.dart';
import '../featers/NotificationssScreens/notificationss.dart';
import '../featers/Onboarding/onboarding.dart';
import '../featers/ProfileScreen/profile.dart';
import '../featers/ReaderScreen/reader.dart';
import '../featers/SplashScreen/splashscreen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplasRoute.page, path: '/'),
        AutoRoute(page: OnboardingRoute.page, path: '/onboard', children: [
          AutoRoute(
            page: OneRoute.page,
            path: 'one',
          ),
          AutoRoute(
            page: TwoRoute.page,
            path: 'two',
          ),
          AutoRoute(
            page: ThreeRoute.page,
            path: 'three',
          ),
        ]),
        AutoRoute(
          page: AuthRoute.page,
          path: '/auth',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: RegistrationRoute.page,
          path: '/registation',
        ),
        AutoRoute(page: MainHomeRoute.page, path: '/mainhome', children: [
          AutoRoute(
            page: HomeRoute.page,
            path: 'home',
          ),

          AutoRoute(
            page: ExploreRoute.page,
            path: 'explore'
          ),

          AutoRoute(
            page: SearcheRoute.page,
            path: 'searche',
          ),
          AutoRoute(
            page: EstanceRoute.page,
            path: 'estance',
          ),
          AutoRoute(
            page: SettingRoute.page,
            path: 'setting',
          ),
        ]),

          AutoRoute(
            page: IdiomaRoute.page,
            path: '/idioma',
          ),

          AutoRoute(
            page: ProfileRoute.page,
            path: '/profile',
          ),

          AutoRoute(
            page: SegurancaRoute.page,
            path: '/seguranca',
          ),

          AutoRoute(
            page: SobreRoute.page,
            path: '/sobre',
          ),
          
      
        AutoRoute(
          page: ReaderRoute.page,
          path: '/reader',
        ),
        AutoRoute(
          page: NotificationRoute.page,
          path: '/notification',
        ),
        AutoRoute(
          page: FiltrosRoute.page,
          path: '/filtros',
        ),
        AutoRoute(
          page: DiscriptionRoute.page,
          path: '/discription',
        ),
        AutoRoute(
          page: ChosingCategoriesRoute.page,
          path: '/chosing',
        ),
        AutoRoute(
          page: CapitulosRoute.page,
          path: '/capitulos',
        ),
        AutoRoute(
          page: CommentsRoute.page,
          path: '/comments',
        ),
      ];
}
