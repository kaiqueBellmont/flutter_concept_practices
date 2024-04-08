import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';

class CustomAccordion extends StatelessWidget {
  const CustomAccordion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Accordion(
              disableScrolling: true,
              headerBorderColor: Colors.white,
              headerBackgroundColor: Theme.of(context).primaryColor,
              headerBorderColorOpened: Theme.of(context).hintColor,
              // headerBorderWidth: 1,
              headerBackgroundColorOpened: Theme.of(context).hintColor,
              contentBackgroundColor: Theme.of(context).canvasColor,
              contentBorderWidth: 3,
              contentHorizontalPadding: 20,
              openAndCloseAnimation: true,
              headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                AccordionSection(
                  isOpen: true,
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
                AccordionSection(
                  leftIcon: const Icon(Icons.task, color: Colors.white),
                  header: const Text(
                    'Nested Accordion',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const CustomAccordionSection(),
                ),
              ]),
        )
      ],
    );
  }
}

class CustomAccordionSection extends StatelessWidget {
  static const headerStyle =
      TextStyle(color: Color(0xffffffff), fontSize: 18, fontWeight: FontWeight.bold);
  static const contentStyleHeader =
      TextStyle(color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  static const contentStyle =
      TextStyle(color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  static const loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';
  static const slogan =
      'Do not forget to play around with all sorts of colors, backgrounds, borders, etc.';

  const CustomAccordionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Accordion(
      paddingListTop: 0,
      paddingListBottom: 0,
      maxOpenSections: 1,
      contentBackgroundColor: Theme.of(context).canvasColor,
      headerBackgroundColorOpened: Colors.pink,
      headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      children: [
        AccordionSection(
          isOpen: true,
          leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
          headerBackgroundColor: Theme.of(context).primaryColor,
          headerBackgroundColorOpened: Theme.of(context).hintColor,
          header: const Text('Nested Section #1', style: headerStyle),
          content: const Text(loremIpsum, style: contentStyle),
          contentHorizontalPadding: 20,
          contentBorderColor: Colors.black54,
        ),
        AccordionSection(
          isOpen: true,
          leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
          header: const Text('Nested Section #2', style: headerStyle),
          headerBackgroundColor: Theme.of(context).primaryColor,
          headerBackgroundColorOpened: Theme.of(context).hintColor,
          contentBorderColor: Colors.black54,
          content: const Row(
            children: [
              Icon(Icons.compare_rounded, size: 120, color: Colors.orangeAccent),
              Flexible(flex: 1, child: Text(loremIpsum, style: contentStyle)),
            ],
          ),
        ),
      ],
    );
  }
}
