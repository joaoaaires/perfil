import 'package:get/get.dart';

import '../features/home/controller/home_bindings.dart';
import '../features/home/pages/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
