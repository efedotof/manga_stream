// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    CapitulosRoute.name: (routeData) {
      final args = routeData.argsAs<CapitulosRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CapitulosScreen(
          key: args.key,
          mangaApi: args.mangaApi,
        ),
      );
    },
    ChosingCategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChosingCategoriesScreen(),
      );
    },
    CommentsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommentsScreen(),
      );
    },
    DiscriptionRoute.name: (routeData) {
      final args = routeData.argsAs<DiscriptionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiscriptionScreen(
          key: args.key,
          dir: args.dir,
          urlImage: args.urlImage,
        ),
      );
    },
    EstanceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EstanceScreen(),
      );
    },
    ExploreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExploreScreen(),
      );
    },
    FiltrosRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FiltrosScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    IdiomaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IdiomaScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainHomeScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    OneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OneScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ReaderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReaderScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
    SearcheRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearcheScreen(),
      );
    },
    SegurancaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SegurancaScreen(),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingScreen(),
      );
    },
    SobreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SobreScreen(),
      );
    },
    SplasRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplasScreen(),
      );
    },
    ThreeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ThreeScreen(),
      );
    },
    TwoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TwoScreen(),
      );
    },
  };
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CapitulosScreen]
class CapitulosRoute extends PageRouteInfo<CapitulosRouteArgs> {
  CapitulosRoute({
    Key? key,
    required MangaAPI mangaApi,
    List<PageRouteInfo>? children,
  }) : super(
          CapitulosRoute.name,
          args: CapitulosRouteArgs(
            key: key,
            mangaApi: mangaApi,
          ),
          initialChildren: children,
        );

  static const String name = 'CapitulosRoute';

  static const PageInfo<CapitulosRouteArgs> page =
      PageInfo<CapitulosRouteArgs>(name);
}

class CapitulosRouteArgs {
  const CapitulosRouteArgs({
    this.key,
    required this.mangaApi,
  });

  final Key? key;

  final MangaAPI mangaApi;

  @override
  String toString() {
    return 'CapitulosRouteArgs{key: $key, mangaApi: $mangaApi}';
  }
}

/// generated route for
/// [ChosingCategoriesScreen]
class ChosingCategoriesRoute extends PageRouteInfo<void> {
  const ChosingCategoriesRoute({List<PageRouteInfo>? children})
      : super(
          ChosingCategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChosingCategoriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CommentsScreen]
class CommentsRoute extends PageRouteInfo<void> {
  const CommentsRoute({List<PageRouteInfo>? children})
      : super(
          CommentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommentsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DiscriptionScreen]
class DiscriptionRoute extends PageRouteInfo<DiscriptionRouteArgs> {
  DiscriptionRoute({
    Key? key,
    required String dir,
    required String urlImage,
    List<PageRouteInfo>? children,
  }) : super(
          DiscriptionRoute.name,
          args: DiscriptionRouteArgs(
            key: key,
            dir: dir,
            urlImage: urlImage,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscriptionRoute';

  static const PageInfo<DiscriptionRouteArgs> page =
      PageInfo<DiscriptionRouteArgs>(name);
}

class DiscriptionRouteArgs {
  const DiscriptionRouteArgs({
    this.key,
    required this.dir,
    required this.urlImage,
  });

  final Key? key;

  final String dir;

  final String urlImage;

  @override
  String toString() {
    return 'DiscriptionRouteArgs{key: $key, dir: $dir, urlImage: $urlImage}';
  }
}

/// generated route for
/// [EstanceScreen]
class EstanceRoute extends PageRouteInfo<void> {
  const EstanceRoute({List<PageRouteInfo>? children})
      : super(
          EstanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'EstanceRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExploreScreen]
class ExploreRoute extends PageRouteInfo<void> {
  const ExploreRoute({List<PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FiltrosScreen]
class FiltrosRoute extends PageRouteInfo<void> {
  const FiltrosRoute({List<PageRouteInfo>? children})
      : super(
          FiltrosRoute.name,
          initialChildren: children,
        );

  static const String name = 'FiltrosRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IdiomaScreen]
class IdiomaRoute extends PageRouteInfo<void> {
  const IdiomaRoute({List<PageRouteInfo>? children})
      : super(
          IdiomaRoute.name,
          initialChildren: children,
        );

  static const String name = 'IdiomaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainHomeScreen]
class MainHomeRoute extends PageRouteInfo<void> {
  const MainHomeRoute({List<PageRouteInfo>? children})
      : super(
          MainHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OneScreen]
class OneRoute extends PageRouteInfo<void> {
  const OneRoute({List<PageRouteInfo>? children})
      : super(
          OneRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReaderScreen]
class ReaderRoute extends PageRouteInfo<void> {
  const ReaderRoute({List<PageRouteInfo>? children})
      : super(
          ReaderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReaderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationScreen]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearcheScreen]
class SearcheRoute extends PageRouteInfo<void> {
  const SearcheRoute({List<PageRouteInfo>? children})
      : super(
          SearcheRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearcheRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SegurancaScreen]
class SegurancaRoute extends PageRouteInfo<void> {
  const SegurancaRoute({List<PageRouteInfo>? children})
      : super(
          SegurancaRoute.name,
          initialChildren: children,
        );

  static const String name = 'SegurancaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingScreen]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SobreScreen]
class SobreRoute extends PageRouteInfo<void> {
  const SobreRoute({List<PageRouteInfo>? children})
      : super(
          SobreRoute.name,
          initialChildren: children,
        );

  static const String name = 'SobreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplasScreen]
class SplasRoute extends PageRouteInfo<void> {
  const SplasRoute({List<PageRouteInfo>? children})
      : super(
          SplasRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplasRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ThreeScreen]
class ThreeRoute extends PageRouteInfo<void> {
  const ThreeRoute({List<PageRouteInfo>? children})
      : super(
          ThreeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThreeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TwoScreen]
class TwoRoute extends PageRouteInfo<void> {
  const TwoRoute({List<PageRouteInfo>? children})
      : super(
          TwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
