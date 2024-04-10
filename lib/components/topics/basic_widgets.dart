import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/accordion/generic_accordion_props.dart';
import 'package:flutter_concept_practices/components/accordion/generic_accordion_section.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/hello_word.dart';
import '../accordion/generic_accordion.dart';
import '../accordion/subtopics_content.dart';

class BasicWidgetsSection extends StatelessWidget {
  const BasicWidgetsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericAccordion(
      accordionSections: [
        GenericAccordionSection(
          header: const AccordionHeader(
            title: "Hello world",
          ),
          content: const AccordionContent(subtopicsContent: [
            SubTopicContent(
              subTopicTitle: 'Hello world',
              route: HelloWorld(),
            ),
            SubTopicContent(
              subTopicTitle: "Official documentation",
              docLink: 'https://docs.flutter.dev/ui',
            ),
          ]),
        ),
        GenericAccordionSection(
          header: const AccordionHeader(
            title: "Text Widgets",
          ),
          content: const AccordionContent(subtopicsContent: [
            SubTopicContent(
              subTopicTitle: 'Text Widgets',
              docLink: 'https://docs.flutter.dev/development/ui/widgets/text',
            )
          ]),
        )
      ],
    );
  }
}
