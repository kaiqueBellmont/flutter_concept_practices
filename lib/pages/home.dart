import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/custom_accordion.dart';
import 'package:flutter_concept_practices/components/text_container.dart';
import '../routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Learning',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(width: 50), // Espaço entre o texto e o ícone
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.home,
                  (route) => false,
                );
              },
              child: const Icon(
                Icons.home,
              ),
            ), // Ícone de home com ação de navegação
          ],
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
