import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  hello app with scaffold
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
          '01: The Hello World !',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
