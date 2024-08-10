import 'dart:ui';

import 'package:get/get.dart';
import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:intl/intl.dart';

class NavigationTopController {
  AppLocale get id => AppLocale.id;

  AppLocale get en => AppLocale.en;

  AppLocale get currentLocale => LocaleSettings.currentLocale;

  String navigation(int i) => texts.tabs.tabs[i];

  void changeLocale(AppLocale code) {
    LocaleSettings.setLocale(code);
    Intl.defaultLocale = code.languageCode;
    Get.updateLocale(Locale(code.languageCode));
  }
}
