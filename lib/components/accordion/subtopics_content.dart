import 'package:flutter/material.dart';
import 'package:flutter_concept_practices/utils/functions/launch_url.dart';

class SubTopicContent extends StatelessWidget {
  final String subTopicTitle;
  final String? link;
  final Widget? route;

  const SubTopicContent({
    super.key,
    required this.subTopicTitle,
    this.link,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return route != null && link == null
        ? ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder: (context, animation, secondaryAnimation) => route!,
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
                      subTopicTitle,
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
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).splashColor,
            ),
            onPressed: () {
              launchToUrl(Uri.parse(link!));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subTopicTitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).splashColor,
                    )),
                const Icon(Icons.arrow_forward),
              ],
            ),
          );
  }
}
