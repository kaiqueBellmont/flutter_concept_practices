import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/custom_accordion.dart';
import 'package:flutter_concept_practices/components/text_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
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
              child: CustomAccordion(
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
