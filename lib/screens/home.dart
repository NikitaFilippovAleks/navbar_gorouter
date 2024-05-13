import 'package:flutter/material.dart';
import 'package:navbar_gorouter/router/routes/main_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                InsideHomeRoute().go(context);
                // CustomNavigationHelper.router.push(
                //   CustomNavigationHelper.detailPath,
                // );
              },
              child: const Text('Push Detail'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Using push method of router enable us to navigate in the current tab without losing the shell',
                textAlign: TextAlign.center,
              ),
            ),

            /// TODO continue
            ElevatedButton(
              onPressed: () {
                // CustomNavigationHelper.router.push(
                //   CustomNavigationHelper.rootDetailPath,
                // );
              },
              child: const Text('Push Detail From Root Navigator'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Using push method of router enable us to navigate in the current tab without losing the shell',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
