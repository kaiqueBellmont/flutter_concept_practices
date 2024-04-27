import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/components/snackBar/snackBar.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "05: Button Widget"),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Tooltip(
                message: 'Esse botão não faz nada', // Use 'não' for correct negation
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Theme.of(context).splashColor,
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      CustomSnackBar.buildSnackBar('This button does anything'),
                    );
                  },
                  child: const Text('This is a Button Widget!'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
