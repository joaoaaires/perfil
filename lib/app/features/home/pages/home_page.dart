import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import 'home_body_page.dart';
import 'home_footer_page.dart';
import 'home_header_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HomeHeaderPage(),
            HomeBodyPage(),
            HomeFooterPage(),
          ],
        ),
      ),
    );
  }
}
