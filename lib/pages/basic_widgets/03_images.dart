import 'package:flutter/cupertino.dart';
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
            decoration: BoxDecoration(border: Border.all()),
            child: Image.asset(
              'lib/assets/images/dash.png',
              width: 200,
            ),
          )),
        ],
      ),
    );
  }
}
