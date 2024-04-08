import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:url_launcher/url_launcher.dart';
import '../routes/routes.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

class CustomAccordion extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomAccordion({
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
              // headerBorderWidth: 1,
              headerBackgroundColorOpened: Theme.of(context).primaryColor,
              contentBackgroundColor: Theme.of(context).canvasColor,
              contentBorderWidth: 3,
              contentHorizontalPadding: 20,
              headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                AccordionSection(
                  isOpen: true,
                  leftIcon: Icon(icon, color: Colors.white),
                  header: Text(
                    title,
                    style: const TextStyle(
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
      TextStyle(color: Color(0xFFe7f8ff), fontSize: 18, fontWeight: FontWeight.bold);
  static const contentStyleHeader =
      TextStyle(color: Color(0xFFe7f8ff), fontSize: 14, fontWeight: FontWeight.w700);
  static const contentStyle =
      TextStyle(color: Color(0xFFe7f8ff), fontSize: 14, fontWeight: FontWeight.normal);
  static const loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';
  static const slogan =
      'Do not forget to play around with all sorts of colors, backgrounds, borders, etc.';

  const CustomAccordionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Accordion(
      disableScrolling: true,
      scaleWhenAnimating: false,
      paddingListTop: 0,
      paddingListBottom: 0,
      maxOpenSections: 1,
      contentBackgroundColor: Theme.of(context).canvasColor,
      headerBackgroundColorOpened: Colors.pink,
      headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      children: [
        AccordionSection(
          isOpen: true,
          leftIcon: Icon(Icons.baby_changing_station, color: Theme.of(context).splashColor),
          headerBackgroundColor: Theme.of(context).hintColor,
          headerBackgroundColorOpened: Theme.of(context).primaryColor,
          header: const Text('Hello World', style: headerStyle),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.helloWorld_1);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).splashColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Flutter Hello Word',
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).splashColor,
                          ), // Defina o tamanho da fonte inicial
                        ),
                      ),
                    ),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).splashColor,
                ),
                onPressed: () {
                  _launchUrl(Uri.parse('https://docs.flutter.dev/ui'));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Official Docs'),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
          contentHorizontalPadding: 20,
          contentBorderColor: Colors.black54,
        ),
        AccordionSection(
          isOpen: true,
          leftIcon: Icon(Icons.abc, color: Theme.of(context).splashColor),
          header: const Text('Text Widgets', style: headerStyle),
          headerBackgroundColor: Theme.of(context).hintColor,
          headerBackgroundColorOpened: Theme.of(context).primaryColor,
          contentBorderColor: Colors.black54,
          content: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).splashColor,
            ),
            onPressed: () {
              _launchUrl(Uri.parse('https://docs.flutter.dev/development/ui/widgets/text'));
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Official Docs'),
                Icon(Icons.arrow_forward), // Ícone que será exibido à direita do botão
              ],
            ),
          ),
        ),
      ],
    );
  }
}
