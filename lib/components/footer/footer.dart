import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/pages/code_syntax_highlight.dart';

class CustomFooter extends StatelessWidget {
  final String code;
  final bool showCode;

  const CustomFooter({Key? key, required this.code, this.showCode = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          (showCode == true)
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 200),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            CodeHighlighterPage(
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
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
