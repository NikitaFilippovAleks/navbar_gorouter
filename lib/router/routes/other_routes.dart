import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:navbar_gorouter/screens/detail.dart';
import 'package:navbar_gorouter/screens/sign_in.dart';
import 'package:navbar_gorouter/screens/sign_up.dart';

part 'other_routes.g.dart';

const String signUpPath = '/signUp';
const String signInPath = '/signIn';
const String detailPath = '/detail';
const String rootDetailPath = '/rootDetail';

@TypedShellRoute<OtherShell>(
  routes: [
    TypedGoRoute<SignUpRoute>(path: signUpPath),
    TypedGoRoute<SignInRoute>(path: signInPath),
    TypedGoRoute<DetailRoute>(path: detailPath),
  ]
)

@immutable
class OtherShell extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return navigator;
  }
}

@immutable
class SignUpRoute extends GoRouteData {
  @override
  buildPage(BuildContext context, GoRouterState state) {
    return getPage(
      child: const SignUpPage(),
      state: state,
    );
  }
}

@immutable
class SignInRoute extends GoRouteData {
  @override
  buildPage(BuildContext context, GoRouterState state) {
    return getPage(
      child: const SignInPage(),
      state: state,
    );
  }
}

@immutable
class DetailRoute extends GoRouteData {
  @override
  buildPage(BuildContext context, GoRouterState state) {
    return getPage(
      child: const DetailPage(),
      state: state,
    );
  }
}

Page getPage({
  required Widget child,
  required GoRouterState state,
}) {
  return MaterialPage(
    key: state.pageKey,
    child: child,
  );
}
