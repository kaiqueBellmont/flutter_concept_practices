import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyan,
        hintColor: Colors.tealAccent,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.pending_actions_outlined, color: Colors.tealAccent),
              SizedBox(width: 10),
              Text('Flutter Learning', textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Adicione a lógica do botão aqui
              },
              child: Text('Botão 1', style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
            SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                // Adicione a lógica do botão aqui
              },
              child: Text('Botão 2', style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
            SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                // Adicione a lógica do botão aqui
              },
              child: Text('Botão 3', style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
          ],
        ),
      ),
    );
  }
}
