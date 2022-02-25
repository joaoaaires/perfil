import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'en_us.dart';
import 'pt_br.dart';

class AppLocalization extends Translations {
  static const locale = Locale('pt', 'BR');

  static const langs = [
    'Português',
    'English',
  ];

  static const locales = [
    Locale('pt', 'BR'),
    Locale('en', 'US'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
        'pt_BR': ptBr,
        'en_US': enUs,
      };

  static void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  static Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale ?? locales[0];
  }
}
