import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

class GenericAccordion extends StatelessWidget {
  final List<AccordionSection> _accordionSections;

  static const headerStyle =
      TextStyle(color: Color(0xFFe7f8ff), fontSize: 18, fontWeight: FontWeight.bold);

  const GenericAccordion({
    Key? key,
    required List<AccordionSection> accordionSections,
  })  : _accordionSections = accordionSections,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Accordion(
      disableScrolling: true,
      scaleWhenAnimating: true,
      paddingListTop: 0,
      headerBorderRadius: 20,
      paddingListBottom: 0,
      maxOpenSections: 1,
      initialOpeningSequenceDelay: 2,
      contentBackgroundColor: Theme.of(context).canvasColor,
      headerBackgroundColorOpened: Theme.of(context).hintColor,
      headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      children: [
        ..._accordionSections,
      ],
    );
  }

  List<AccordionSection> getAccordionSections() {
    return _accordionSections;
  }
}
