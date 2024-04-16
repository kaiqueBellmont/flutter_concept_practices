import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/components/accordion/generic_accordion_props.dart';
import 'package:flutter_concept_practices/components/accordion/generic_accordion_section.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/02_text_widgets.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/01_hello_word.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/03_images.dart';
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
              subTopicTitle: "Video",
              link:
                  'https://www.youtube.com/watch?v=1ukSR1GRtMU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ',
            ),
            SubTopicContent(
              subTopicTitle: "Official documentation",
              link: 'https://docs.flutter.dev/ui',
            ),
          ]),
        ),
        GenericAccordionSection(
          header: const AccordionHeader(
            title: "Text Widgets",
          ),
          content: const AccordionContent(subtopicsContent: [
            SubTopicContent(
              subTopicTitle: 'Text widget',
              route: TextWidgets(),
            ),
            SubTopicContent(
              subTopicTitle: 'Official documentation',
              link: 'https://docs.flutter.dev/development/ui/widgets/text',
            )
          ]),
        ),
        GenericAccordionSection(
          header: const AccordionHeader(
            title: "Image Widgets",
          ),
          content: const AccordionContent(subtopicsContent: [
            SubTopicContent(
              subTopicTitle: 'Image widget',
              route: ImageWidgets(),
            ),
            SubTopicContent(
              subTopicTitle: 'Video',
              link: 'https://www.youtube.com/watch?v=7oIAs-0G4mw',
            ),
            SubTopicContent(
              subTopicTitle: 'Official documentation',
              link: 'https://api.flutter.dev/flutter/widgets/Image-class.html',
            )
          ]),
        )
      ],
    );
  }
}
