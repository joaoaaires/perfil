// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/util/spacer.dart';
import '../../../core/util/text_custom.dart';
import '../controller/home_controller.dart';
import '../models/home_item_button.dart';

class HomeBodyPage extends StatelessWidget {
  const HomeBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    final colorPrimary = Theme.of(context).primaryColor;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 40,
      ),
      color: colorPrimary,
      child: Center(
        child: SizedBox(
          width: 600,
          child: Column(
            children: [
              buildSobreMim(),
              spacerHeight(height: 18),
              buildList("linguagens".tr, controller.homeItensLinguagens),
              spacerHeight(height: 18),
              buildList("ferramentas".tr, controller.homeItensFerramentas),
              spacerHeight(height: 18),
              Text(
                "${"outros".tr}: Bulma, ExpressJS, Firebase, Redis, Selenium, VuetifyJS",
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSobreMim() {
    return Column(
      children: [
        title(title: "sobremimtitulo".tr),
        spacerHeight(height: 25),
        Text(
          "sobremimtext".tr,
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  Widget buildList(String name, List<HomeItemButton> itens) {
    return Column(
      children: [
        title(title: name),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              itens.length,
              (index) => buildCard(itens[index]),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCard(HomeItemButton item) {
    return Card(
      color: const Color(0xFF363e45),
      child: InkWell(
        onTap: () => js.context.callMethod('open', [item.link]),
        child: Container(
          width: 120,
          height: 85,
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: item.icon is IconData
                    ? Icon(
                        item.icon,
                        color: Colors.white,
                        size: 32,
                      )
                    : item.icon,
              ),
              Text(
                item.title,
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
