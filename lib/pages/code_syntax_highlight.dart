import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_concept_practices/components/appbar/custom_appbar.dart';
import 'package:flutter_concept_practices/components/texts/text_container.dart';
import 'package:provider/provider.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class CodeHighlighterPage extends StatelessWidget {
  final String? code;

  const CodeHighlighterPage({Key? key, this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Code Highlighter"),
      body: CodeHighlighter(code: code),
    );
  }
}

class CodeHighlighter extends StatelessWidget {
  final String? code;

  const CodeHighlighter({Key? key, this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var highlighter = Provider.of<Highlighter>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              color: Colors.transparent,
              child: Text.rich(
                highlighter.highlight(code ?? ''),
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        Padding(
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  _copyToClipboard(context, code ?? '');
                },
                child: const Text('Copy code'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _copyToClipboard(BuildContext context, String code) {
    Clipboard.setData(ClipboardData(text: code));
    const snackBar = SnackBar(
      backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating,
      closeIconColor: Colors.white,
      showCloseIcon: true,
      content: Text(
        'Code copied to clipboard',
        style: TextStyle(color: Colors.white),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
