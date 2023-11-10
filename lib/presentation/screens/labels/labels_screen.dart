import 'package:flutter/material.dart';

class LabelsScreen extends StatelessWidget {
  static const String name = 'label_screen';
  const LabelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Labels Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
