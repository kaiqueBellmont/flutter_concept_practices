import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/components/footer/footer.dart';

class ColumnAndRow extends StatelessWidget {
  const ColumnAndRow({super.key});
  static const code = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "07: Column and Row Widgets"),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Text(
            '"Is better you take a look in the docs, articles or videos to understand better how to use Column and Row Widgets."',
            style: TextStyle(
                color: Theme.of(context).primaryColor, fontStyle: FontStyle.italic, fontSize: 18),
          ),
        ),
        const CustomFooter(code: code, showCode: false)
      ]),
    );
  }
}
