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
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'This is a simple image widget, for more options check the official documentation',
              style: TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'lib/assets/images/dash.png',
                width: 400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Text(
              'PS: Remember to update the image path in pubspec.yml (replace "lib/assets/images/dash.png" with the correct path).',
              style: TextStyle(fontSize: 12, color: Colors.cyanAccent),
            ),
          ),
          const CustomFooter(code: code)
        ],
      ),
    );
  }
}
