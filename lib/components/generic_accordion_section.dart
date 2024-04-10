import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class GenericAccordionSection extends AccordionSection {
  GenericAccordionSection({
    super.key,
    required super.header,
    required super.content,
  });

  @override
  Widget build(BuildContext context) {
    return AccordionSection(
      isOpen: false,
      headerBackgroundColor: Theme.of(context).hintColor,
      headerBackgroundColorOpened: Theme.of(context).primaryColor,
      header: header,
      content: content,
      contentHorizontalPadding: 20,
      contentBorderColor: Colors.cyanAccent,
    );
  }
}
