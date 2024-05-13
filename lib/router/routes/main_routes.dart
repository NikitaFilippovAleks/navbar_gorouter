import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navbar_gorouter/helpers/bottom_nav_page.dart';
// import 'package:navbar_gorouter/screens/detail.dart';
import 'package:navbar_gorouter/screens/home.dart';
import 'package:navbar_gorouter/screens/inside_home.dart';
import 'package:navbar_gorouter/screens/search.dart';
import 'package:navbar_gorouter/screens/settings.dart';
// import 'package:navbar_gorouter/screens/sign_in.dart';
// import 'package:navbar_gorouter/screens/sign_up.dart';

part 'main_routes.g.dart';

const String signUpPath = '/signUp';
const String signInPath = '/signIn';
const String detailPath = '/detail';
const String rootDetailPath = '/rootDetail';

const String homePath = '/home';
const String settingsPath = '/settings';
const String searchPath = '/search';

final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();

// @TypedShellRoute<MainShell>(
//   routes: [
//     TypedGoRoute<HomeRoute>(
//       path: '/home',
//     ),
//     TypedGoRoute<ProfileHomeRoute>(
//       path: '/profile',
//     ),
//   ],
// )
// @immutable
// class MainShell extends ShellRouteData {
//   @override
//   Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
//     return navigator;
//   }
// }

// @TypedShellRoute(
//   routes: [
//     TypedGoRoute<SignUpRoute>(path: signUpPath),
//     TypedGoRoute<SignInRoute>(path: signInPath),
//     TypedGoRoute<DetailRoute>(path: detailPath),
    @TypedStatefulShellRoute<MainShellRoute>(
      branches: [
        TypedStatefulShellBranch<HomeBranch>(
          routes: [
            TypedGoRoute<HomeRoute>(
              path: homePath,
              routes: [
                TypedGoRoute<InsideHomeRoute>(path: 'home/inside')
              ]
            )
          ]
        ),
        TypedStatefulShellBranch<SearchBranch>(
          routes: [
            TypedGoRoute<SearchRoute>(
              path: searchPath
            )
          ]
        ),
        TypedStatefulShellBranch<SettingsBranch>(
          routes: [
            TypedGoRoute<SettingsRoute>(
              path: settingsPath
            )
          ]
        )
      ]
    )
//   ]
// )



@immutable
class MainShellRoute extends StatefulShellRouteData {
  // parentNavigatorKey = parentNavigatorKey;
  const MainShellRoute();

  @override
  pageBuilder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return getPage(
      child: BottomNavigationPage(
        child: navigationShell,
      ),
      state: state,
    );
  }
}

@immutable
class HomeBranch extends StatefulShellBranchData {}

@immutable
class HomeRoute extends GoRouteData {
  @override
  buildPage(BuildContext context, GoRouterState state) {
    return getPage(
      child: const HomePage(),
      state: state,
    );
  }
}

@immutable
class InsideHomeRoute extends GoRouteData {
  @override
  buildPage(BuildContext context, GoRouterState state) {
    return getPage(
      child: const InsideHome(),
      state: state,
    );
  }
}

@immutable
class SearchBranch extends StatefulShellBranchData {}

@immutable
class SearchRoute extends GoRouteData {
  @override
  buildPage(BuildContext context, GoRouterState state) {
    return getPage(
      child: const SearchPage(),
      state: state,
    );
  }
}

@immutable
class SettingsBranch extends StatefulShellBranchData {}

@immutable
class SettingsRoute extends GoRouteData {
  @override
  buildPage(BuildContext context, GoRouterState state) {
    return getPage(
      child: const SettingsPage(),
      state: state,
    );
  }
}

// @immutable
// class SignUpRoute extends GoRouteData {
//   @override
//   buildPage(BuildContext context, GoRouterState state) {
//     return getPage(
//       child: const SignUpPage(),
//       state: state,
//     );
//   }
// }

// @immutable
// class SignInRoute extends GoRouteData {
//   @override
//   buildPage(BuildContext context, GoRouterState state) {
//     return getPage(
//       child: const SignInPage(),
//       state: state,
//     );
//   }
// }

// @immutable
// class DetailRoute extends GoRouteData {
//   @override
//   buildPage(BuildContext context, GoRouterState state) {
//     return getPage(
//       child: const DetailPage(),
//       state: state,
//     );
//   }
// }

Page getPage({
  required Widget child,
  required GoRouterState state,
}) {
  return MaterialPage(
    key: state.pageKey,
    child: child,
  );
}
