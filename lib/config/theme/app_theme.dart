import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.teal,
  Colors.purple,
  Colors.green,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
  Colors.deepPurple,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({this.selectedColor = 0, this.isDarkmode = false})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkmode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));

  AppTheme copyWith({int? selectedColor, bool? isDarkmode}) {
    return AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkmode: isDarkmode ?? this.isDarkmode,
    );
  }
}
