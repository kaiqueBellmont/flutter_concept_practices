import 'package:flutter/material.dart';
import './subtopics_content.dart';

class AccordionHeader extends StatelessWidget {
  final String title;

  const AccordionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFe7f8ff),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AccordionContent extends StatelessWidget {
  final List<SubTopicContent> subtopicsContent;

  const AccordionContent({
    required this.subtopicsContent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [...subtopicsContent]);
  }
}
