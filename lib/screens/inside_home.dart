import 'package:flutter/material.dart';

class InsideHome extends StatelessWidget {
  const InsideHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inside home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Inside home here')
          ],
        ),
      ),
    );
  }
}

