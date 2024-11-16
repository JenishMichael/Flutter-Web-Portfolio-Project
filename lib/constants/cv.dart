import 'package:url_launcher/url_launcher.dart';

class CV {
  static const String resumeUrl =
      "https://jenishmichael.github.io/CV/JenishResume.pdf";

  static void downloadCv() async {
    if (await canLaunchUrl(Uri.parse(resumeUrl))) {
      await launchUrl(Uri.parse(resumeUrl));
    } else {
      throw 'Could not launch';
    }
  }
}
