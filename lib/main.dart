import 'package:flutter/material.dart';
import 'package:furniture_app/auth/login_screen.dart';
import 'package:furniture_app/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.light,
        theme: lightTheme,
        home: const LoginScreen());
  }
}
