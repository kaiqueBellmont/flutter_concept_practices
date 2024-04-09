import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/pages/home.dart';
import 'package:flutter_concept_practices/pages/widgets/hello_word.dart';
import '../routes/routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoutes.home: (ctx) => const MyHomePage(),
        AppRoutes.helloWord: (ctx) => const HelloWorld(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: const Color(0xFF0468D7),
        splashColor: const Color(0xFFe7f8ff),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
        textTheme: ThemeData.dark().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
      ),
      home: const MyHomePage(),
    );
  }
}
