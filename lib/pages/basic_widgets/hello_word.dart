import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/utils/routes/routes.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "01: Flutter Hello World"),
      body: Stack(
        children: [
          const Center(
            child: Text('Hello World!'),
          ),
          Positioned(
            bottom: 20,
            left: 20, // Posição base dos botões
            right: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10), // Padding horizontal
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaço entre os botões
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back), // Ícone de seta para a esquerda
                    onPressed: () {
                      Navigator.pop(context); // Navegação de volta
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.syntaxHyghlight); // Navegando para a segunda página
                    },
                    child: const Text('View the code'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
