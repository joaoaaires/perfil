// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/util/spacer.dart';
import '../controller/home_controller.dart';
import '../models/home_item_button.dart';

class HomeSocialMediaBioWidget extends StatelessWidget {
  const HomeSocialMediaBioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    final homeItensButton = controller.homeItensButton;

    final colorPrimary = Theme.of(context).primaryColor;

    return Container(
      margin: const EdgeInsetsDirectional.only(top: 85),
      padding: const EdgeInsetsDirectional.only(top: 95),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: colorPrimary,
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("BR"),
              spacerWidth(width: 15),
              Text("US"),
            ],
          ),
          spacerHeight(height: 15),
          const Text(
            "JOAO AIRES",
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "desenvolvedor".tr,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const Text(
            "joaaars@gmail.com",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          spacerHeight(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                homeItensButton.length,
                (index) => getIconButtonCustom(homeItensButton[index]),
              ),
            ),
          ),
          spacerHeight(height: 25),
        ],
      ),
    );
  }

  IconButton getIconButtonCustom(HomeItemButton item) => IconButton(
        onPressed: () => js.context.callMethod('open', [item.link]),
        icon: Icon(
          item.icon,
          color: Colors.white,
        ),
      );
}
