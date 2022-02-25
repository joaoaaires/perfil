import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lang/app_localization.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: AppLocalization.locale,
      translations: AppLocalization(),
      theme: AppTheme.theme,
      initialRoute: AppRoutes.initial,
      getPages: AppPages.pages,
    );
  }
}