import 'package:url_launcher/url_launcher.dart';

Future<void> launchToUrl(url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
