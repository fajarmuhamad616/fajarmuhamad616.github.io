import 'package:url_launcher/url_launcher.dart';

class ExternalAppUtil {
  static void redirectToLink({required String url}) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}
