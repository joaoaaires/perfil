import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'en_us.dart';
import 'pt_br.dart';

class AppLocalization extends Translations {

  static const locale = Locale('pt', 'BR');

  static const langs = [
    'Português'
    'English'
  ];

    static const locales = [
    Locale('pt', 'BR'),
    Locale('en', 'US'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
    'pt_BR':ptBr,
    'en_US':enUs,
  };  
}