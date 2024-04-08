import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  static const style = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  const InfoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Adiciona bordas arredondadas
      ),
      padding: const EdgeInsets.all(10),
      child: const Text(
        'What do you want to learn / review today?',
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }
}
