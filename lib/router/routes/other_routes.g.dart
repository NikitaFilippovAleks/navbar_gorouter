// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $otherShell,
    ];

RouteBase get $otherShell => ShellRouteData.$route(
      factory: $OtherShellExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/signUp',
          factory: $SignUpRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/signIn',
          factory: $SignInRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/detail',
          factory: $DetailRouteExtension._fromState,
        ),
      ],
    );

extension $OtherShellExtension on OtherShell {
  static OtherShell _fromState(GoRouterState state) => OtherShell();
}

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => SignUpRoute();

  String get location => GoRouteData.$location(
        '/signUp',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => SignInRoute();

  String get location => GoRouteData.$location(
        '/signIn',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailRouteExtension on DetailRoute {
  static DetailRoute _fromState(GoRouterState state) => DetailRoute();

  String get location => GoRouteData.$location(
        '/detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
