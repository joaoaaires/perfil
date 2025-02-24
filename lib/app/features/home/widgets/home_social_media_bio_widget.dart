import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/util/spacer.dart';
import '../../../lang/app_localization.dart';
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
              GestureDetector(
                onTap: () => AppLocalization.changeLocale("Português"),
                child: const Text("🇧🇷"),
              ),
              spacerWidth(width: 15),
              GestureDetector(
                onTap: () => AppLocalization.changeLocale("English"),
                child: const Text("🇺🇸"),
              ),
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
        onPressed: () async {
          final url = Uri.parse(item.link);
          if (!await launchUrl(url)) {
            throw Exception('Could not launch $url');
          }
        },
        icon: Icon(
          item.icon,
          color: Colors.white,
        ),
      );
}
