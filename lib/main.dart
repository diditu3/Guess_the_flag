import 'package:flags/Features/flagQuiz/FlagsQuiz.dart';
import 'package:flags/Features/flagsName/FlagsNames.dart';
import 'package:flags/Features/homePage/HomePage.dart';
import 'package:flags/Features/splashScreen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flags',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FlagsQuiz(),

    );
  }
}



