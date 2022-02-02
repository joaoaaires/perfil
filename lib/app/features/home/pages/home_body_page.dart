import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfil/app/features/home/controller/home_controller.dart';

import '../../../core/util/spacer.dart';
import '../../../core/util/text_custom.dart';
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
              buildList("Linguagens", controller.homeItensLinguagens),
              spacerHeight(height: 18),
              buildList("Ferramentas", controller.homeItensFerramentas),
              spacerHeight(height: 18),
              const Text(
                "Outros: Bulma, ExpressJS, Firebase, Redis, Selenium, VuetifyJS",
                style: TextStyle(color: Colors.white),
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
        title(title: "Sobre mim"),
        spacerHeight(height: 25),
        const Text(
          '''
    Atuo no mercado de desenvolvimento de softwares desde 2014, e ao longo desse tempo venho colecionado experiencias em diversas linguagens e ferramentas. Possuo especialidades em desenvolvimento back-end e mobile.

    Busco novas e melhores maneiras de realizar minhas tarefas e criar meus códigos. E sempre estou pronto para receber uma crítica ou aprender algo novo. Gosto de manter meus projetos organizados e sempre cumprir prazos.

    Além de um desenvolvedor, gosto de praticar esportes como futebol e vôlei, gosto de fazer uma caminhada quando possível. Fã de animes, gosto dos últimos lançamentos como Demon Slayer e Jujutsu Kaisen. Gosto muito de viajar e já conheci a cidade de Toronto no Canada, e tenho sonho de conhecer New York.

📫 Entre em contato comigo através das redes sociais. :D
        ''',
          style: TextStyle(color: Colors.white),
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
