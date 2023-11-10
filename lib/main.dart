import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/config/theme/app_theme.dart';
import 'package:flutter_widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:flutter_widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:flutter_widgets_app/presentation/screens/home/home_screen.dart';
import 'package:flutter_widgets_app/presentation/screens/labels/labels_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/labels': (context) => const LabelsScreen(),
        '/cards': (context) => const CardsScreen(),
      },
    );
  }
}
