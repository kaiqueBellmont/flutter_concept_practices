import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/components/footer/footer.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  static const String code = '''
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  hello app with scaffold
    return const Scaffold(
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
''';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "01: Flutter Hello World"),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text('Hello World!'),
            ),
          ),
          CustomFooter(code: code)
        ],
      ),
    );
  }
}
