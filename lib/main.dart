import 'package:flutter/material.dart';
import '../components/accordion2.dart';
import '../components/text_container.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(94, 14, 65, 1),
        hintColor: const Color.fromRGBO(255, 32, 78, 1),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(94, 14, 65, 1),
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: Text(
          'Flutter Learning',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: InfoBox(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: CustomAccordion(),
            ),
          ),
        ],
      ),
    );
  }
}
