import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Widgets',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'by',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Rafael Barrelo',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
