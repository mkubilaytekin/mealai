import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:meal_ai/constants/constants.dart';
import 'package:meal_ai/constants/theme_const.dart';
import 'package:meal_ai/screens/splash.dart';

void main() {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeConst.customDarkTheme,
      theme: ThemeConst.customLightTheme,
      home: const SplashPage(),
    );
  }
}
