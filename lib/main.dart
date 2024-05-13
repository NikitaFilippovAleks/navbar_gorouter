import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navbar_gorouter/router/navigator.dart';
import 'package:navbar_gorouter/screens/home.dart';

main() {
  CustomNavigationHelper.instance;
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: CustomNavigationHelper.router,
    );
  }
}
