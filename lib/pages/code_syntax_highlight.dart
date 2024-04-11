import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importe o pacote services.dart para usar a classe Clipboard
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/components/texts/text_container.dart';
import 'package:provider/provider.dart';
import 'package:syntax_highlight/syntax_highlight.dart'; // Importe a classe que contém o _dartDarkHighlighter

class Code extends StatelessWidget {
  final String? code;
  const Code({Key? key, this.code = ''' '''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Acesse o _dartDarkHighlighter usando Provider
    var highlighter = Provider.of<Highlighter>(context);

    return Scaffold(
      appBar: const CustomAppBar(title: "Hello World Code"),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.transparent,
                  child: Text.rich(
                    // Highlight the code.
                    highlighter.highlight(code!),
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 12,
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaço entre os botões
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20), // Padding apenas para o primeiro botão
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context); // Voltar uma página ao ser clicado
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20), // Padding apenas para o segundo botão
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _copyToClipboard(context,
                          code!); // Chamar a função para copiar o código para a área de transferência
                    },
                    child: const Text('Copy code'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String code) {
    Clipboard.setData(ClipboardData(text: code)); // Copiar o código para a área de transferência
    const snackBar = SnackBar(
      // change color of snackbar text

      backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating,
      closeIconColor: Colors.white,
      showCloseIcon: true,
      content: Text(
        'Code copied to clipboard',
        style: TextStyle(color: Colors.white),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar); // Exibir uma mensagem de confirmação
  }
}
