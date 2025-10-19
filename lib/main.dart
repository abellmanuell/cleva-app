import 'package:cleva_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarThemeData(
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(255, 189, 89, 1),
          primary: const Color.fromRGBO(255, 189, 89, 1),
        ),

        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: "Geist",
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
