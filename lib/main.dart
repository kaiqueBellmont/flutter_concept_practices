import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/02_text_widgets.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/03_images.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/04_container.dart';
import 'package:flutter_concept_practices/pages/code_syntax_highlight.dart';
import 'package:flutter_concept_practices/pages/home.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/01_hello_word.dart';
import 'package:flutter_concept_practices/utils/routes/routes.dart';
import 'package:provider/provider.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

late final Highlighter _dartDarkHighlighter;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Highlighter.initialize([
    'dart',
  ]);
  var darkTheme = await HighlighterTheme.loadDarkTheme();
  var dartDarkHighlighter = Highlighter(
    language: 'dart',
    theme: darkTheme,
  );

  runApp(
    Provider.value(
      value: dartDarkHighlighter,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(width: 1.0, color: Colors.blue),
              right: BorderSide(width: 1.0, color: Colors.blue),
            ),
          ),
          child: const MyMainApp(),
        ),
      ),
    );
  }
}

class MyMainApp extends StatelessWidget {
  const MyMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home: (ctx) => const HomePage(),
        AppRoutes.helloWord: (ctx) => const HelloWorld(),
        AppRoutes.textWidgets: (ctx) => const TextWidgets(),
        AppRoutes.imageWidgets: (ctx) => const ImageWidgets(),
        AppRoutes.containerWidgets: (ctx) => const ContainerWidget(),
        AppRoutes.syntaxHyghlight: (ctx) => const CodeHighlighterPage(),
      },
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
      home: const HomePage(),
    );
  }
}
