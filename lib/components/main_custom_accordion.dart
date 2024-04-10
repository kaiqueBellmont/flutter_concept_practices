// This class is used to create a custom accordion with the help of the accordion package.

import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter_concept_practices/components/topics/basic_widgets.dart';

class MainCustomAccordion extends StatelessWidget {
  final String title;
  final IconData icon;

  const MainCustomAccordion({
    Key? key,
    required this.title,
    required this.icon,
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
              headerBackgroundColor: Theme.of(context).hintColor,
              headerBorderColorOpened: Theme.of(context).primaryColor,
              headerBackgroundColorOpened: Theme.of(context).primaryColor,
              contentBackgroundColor: Theme.of(context).canvasColor,
              contentBorderWidth: 3,
              contentHorizontalPadding: 20,
              headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                AccordionSection(
                  isOpen: false,
                  leftIcon: Icon(icon, color: Colors.white),
                  header: Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: const BasicWidgetsSection(),
                ),
              ]),
        )
      ],
    );
  }
}
