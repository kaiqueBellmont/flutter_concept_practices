import 'package:flutter/material.dart';
import '../pages/widgets/hello-word.dart';

class Routes {
  static const String home = '/';
  static const String helloWorld_1 = '/widgets/hello_world_1'; // Adicionando barras inclinadas aqui
  static const String page3 = '/page3';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      helloWorld_1: (context) => const HelloWorld1(),
    };
  }
}
