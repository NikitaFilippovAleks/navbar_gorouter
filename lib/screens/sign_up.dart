import 'package:flutter/material.dart';
import 'package:navbar_gorouter/router/routes/other_routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                SignInRoute().go(context);
                // CustomNavigationHelper.router.push(
                //   CustomNavigationHelper.signInPath,
                // );
              },
              child: const Text('Push SignIn'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Using push method of router enable us to go back functionality',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
