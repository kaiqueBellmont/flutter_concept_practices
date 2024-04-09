import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/custom_appbar.dart';
import 'package:flutter_concept_practices/components/main_custom_accordion.dart';
import 'package:flutter_concept_practices/components/text_container.dart';
import '../routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Flutter Learning'),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: InfoBox(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: MainCustomAccordion(
                title: 'Basic Widgets',
                icon: Icons.widgets,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
