import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/utils/routes/routes.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  hello app with scaffold
    return const Scaffold(
      appBar: CustomAppBar(title: "01: Flutter Hello World"),
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
