import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game_screen.dart';

void main() {
  runApp(const NumberGuesserApp());
}

class NumberGuesserApp extends StatefulWidget {
  const NumberGuesserApp({super.key});

  @override
  State<NumberGuesserApp> createState() => _NumberGuesserAppState();
}

class _NumberGuesserAppState extends State<NumberGuesserApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Guessing Game',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'VT323',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'VT323',
      ),
      home: GameScreen(
        onToggleTheme: toggleTheme,
        isDark: _themeMode == ThemeMode.dark,
      ),
    );
  }
}
