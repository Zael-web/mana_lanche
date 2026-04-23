import 'package:flutter/material.dart';
import 'screens/login_screens.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // ignore: library_private_types_in_public_api
  static _MyAppState? of(BuildContext context) {
    return context.findAncestorStateOfType<_MyAppState>();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,

      // TEMA CLARO
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),

      // TEMA ESCURO
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.black,
      ),

      home: const LoginScreen(),
    );
  }
}
















  