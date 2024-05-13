import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:navbar_gorouter/router/routes/main_routes.dart' as main_routes;
import 'package:navbar_gorouter/router/routes/other_routes.dart' as other_routes;
// import 'package:navbar_gorouter/router/routes/other_routes.dart';

class CustomNavigationHelper {
  static final CustomNavigationHelper _instance =
      CustomNavigationHelper._internal();

  static CustomNavigationHelper get instance => _instance;

  static late final GoRouter router;

  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> searchTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> settingsTabNavigatorKey =
      GlobalKey<NavigatorState>();

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  static const String signUpPath = '/signUp';
  static const String signInPath = '/signIn';
  static const String detailPath = '/detail';
  static const String rootDetailPath = '/rootDetail';

  static const String homePath = '/home';
  static const String settingsPath = '/settings';
  static const String searchPath = '/search';

  factory CustomNavigationHelper() {
    return _instance;
  }

  CustomNavigationHelper._internal() {
    final routes = [
      ...other_routes.$appRoutes,
      ...main_routes.$appRoutes,
      // StatefulShellRoute.indexedStack(
      //   parentNavigatorKey: parentNavigatorKey,
      //   branches: [
      //     StatefulShellBranch(
      //       navigatorKey: homeTabNavigatorKey,
      //       routes: [
      //         GoRoute(
      //           path: homePath,
      //           pageBuilder: (context, GoRouterState state) {
      //             return getPage(
      //               child: const HomePage(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       navigatorKey: searchTabNavigatorKey,
      //       routes: [
      //         GoRoute(
      //           path: searchPath,
      //           pageBuilder: (context, state) {
      //             return getPage(
      //               child: const SearchPage(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       navigatorKey: settingsTabNavigatorKey,
      //       routes: [
      //         GoRoute(
      //           path: settingsPath,
      //           pageBuilder: (context, state) {
      //             return getPage(
      //               child: const SettingsPage(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //   ],
      //   pageBuilder: (
      //     BuildContext context,
      //     GoRouterState state,
      //     StatefulNavigationShell navigationShell,
      //   ) {
      //     return getPage(
      //       child: BottomNavigationPage(
      //         child: navigationShell,
      //       ),
      //       state: state,
      //     );
      //   },
      // ),
      // GoRoute(
      //   parentNavigatorKey: parentNavigatorKey,
      //   path: signUpPath,
      //   pageBuilder: (context, state) {
      //     return getPage(
      //       child: const SignUpPage(),
      //       state: state,
      //     );
      //   },
      // ),
      // GoRoute(
      //   parentNavigatorKey: parentNavigatorKey,
      //   path: signInPath,
      //   pageBuilder: (context, state) {
      //     return getPage(
      //       child: const SignInPage(),
      //       state: state,
      //     );
      //   },
      // ),
      // GoRoute(
      //   path: detailPath,
      //   pageBuilder: (context, state) {
      //     return getPage(
      //       child: const DetailPage(),
      //       state: state,
      //     );
      //   },
      // ),
      // GoRoute(
      //   parentNavigatorKey: parentNavigatorKey,
      //   path: rootDetailPath,
      //   pageBuilder: (context, state) {
      //     return getPage(
      //       child: const DetailPage(),
      //       state: state,
      //     );
      //   },
      // ),
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: other_routes.SignUpRoute().location,
      routes: routes,
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }
}
