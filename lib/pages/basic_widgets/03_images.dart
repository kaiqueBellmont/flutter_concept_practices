import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/components/footer/footer.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({Key? key}) : super(key: key);

  static const code = '''
import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "03: Image Widgets"),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'lib/assets/images/dash.png',
                width: 400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "03: Image Widgets"),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'lib/assets/images/dash.png',
                width: 400,
              ),
            ),
          ),
          const CustomFooter(code: code)
        ],
      ),
    );
  }
}
