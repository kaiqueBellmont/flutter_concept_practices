import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/pages/code_syntax_highlight.dart';

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
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 200),
                          pageBuilder: (context, animation, secondaryAnimation) =>
                              const CodeHighlighterPage(
                            code: code,
                          ),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
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
