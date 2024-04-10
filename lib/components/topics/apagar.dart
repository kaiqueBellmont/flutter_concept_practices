import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/pages/basic_widgets/hello_word.dart';
import '../../utils/functions/launch_url.dart';

class BasicWidgetsSection extends StatelessWidget {
  static const headerStyle =
      TextStyle(color: Color(0xFFe7f8ff), fontSize: 18, fontWeight: FontWeight.bold);

  const BasicWidgetsSection({super.key});

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
          isOpen: false,
          leftIcon: Icon(Icons.baby_changing_station, color: Theme.of(context).splashColor),
          headerBackgroundColor: Theme.of(context).hintColor,
          headerBackgroundColorOpened: Theme.of(context).primaryColor,
          header: const Text('Hello World', style: headerStyle),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 200),
                      pageBuilder: (context, animation, secondaryAnimation) => const HelloWorld(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                  );
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
                          ),
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
                  launchToUrl(Uri.parse('https://docs.flutter.dev/ui'));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Official Docs',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).splashColor,
                        )),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
          contentHorizontalPadding: 20,
          contentBorderColor: Colors.black54,
        ),
        AccordionSection(
          isOpen: false,
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
              launchToUrl(Uri.parse('https://docs.flutter.dev/development/ui/widgets/text'));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Official Docs',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).splashColor,
                    )),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
