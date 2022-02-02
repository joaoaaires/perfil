import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../models/home_item_button.dart';

class HomeController extends GetxController {
  final homeItensButton = <HomeItemButton<IconData>>[
    HomeItemButton(
      icon: LineIcons.facebookF,
      link: "https://www.facebook.com/joaoaairess",
      title: "Facebook",
    ),
    HomeItemButton(
      icon: LineIcons.twitter,
      link: "https://twitter.com/joaoaaires",
      title: "Twitter",
    ),
    HomeItemButton(
      icon: LineIcons.instagram,
      link: "https://www.instagram.com/joaoaaires",
      title: "Instagram",
    ),
    HomeItemButton(
      icon: LineIcons.linkedinIn,
      link: "https://www.linkedin.com/in/joaoaaires",
      title: "LinkedIn",
    ),
    HomeItemButton(
      icon: LineIcons.github,
      link: "https://github.com/joaoaaires/",
      title: "GitHub",
    ),
  ];

  final homeItensLinguagens = <HomeItemButton>[
    HomeItemButton(
      icon: LineIcons.java,
      link: "https://www.java.com/",
      title: "Java",
    ),
    HomeItemButton(
      icon: LineIcons.javascriptJsSquare,
      link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
      title: "JavaScript",
    ),
    HomeItemButton(
      icon: LineIcons.git,
      link: "https://git-scm.com/",
      title: "Git",
    ),
    HomeItemButton(
      icon: LineIcons.php,
      link: "https://www.php.net/",
      title: "PHP",
    ),
    HomeItemButton(
      icon: LineIcons.python,
      link: "https://www.python.org/",
      title: "Python",
    ),
    HomeItemButton(
      icon: const ImageIcon(
        AssetImage("images/sql.png"),
        color: Colors.white,
      ),
      link: "https://www.mysql.com/",
      title: "SQL",
    ),
  ];

  final homeItensFerramentas = <HomeItemButton>[
    HomeItemButton(
      icon: const ImageIcon(
        AssetImage("images/spring.png"),
        color: Colors.white,
      ),
      link: "https://spring.io/",
      title: "Spring Boot",
    ),
    HomeItemButton(
      icon: const ImageIcon(
        AssetImage("images/play.png"),
        color: Colors.white,
        size: 38,
      ),
      link: "https://www.playframework.com/",
      title: "Play Framework",
    ),
    HomeItemButton(
      icon: Icons.warning,
      link: "https://totalcross.com/",
      title: "TotalCross",
    ),
    HomeItemButton(
      icon: const ImageIcon(
        AssetImage("images/nodejs.png"),
        color: Colors.white,
      ),
      link: "https://nodejs.org/",
      title: "NodeJS",
    ),
    HomeItemButton(
      icon: const ImageIcon(
        AssetImage("images/angularjs.png"),
        color: Colors.white,
      ),
      link: "https://angular.io/",
      title: "AngularJS",
    ),
    HomeItemButton(
      icon: const ImageIcon(
        AssetImage("images/vuejs.png"),
        color: Colors.white,
      ),
      link: "https://vuejs.org/",
      title: "VueJS",
    ),
    HomeItemButton(
      icon: const ImageIcon(
        AssetImage("images/flutter.png"),
        color: Colors.white,
      ),
      link: "https://flutter.dev/",
      title: "Flutter",
    ),
    HomeItemButton(
      icon: const ImageIcon(
        AssetImage("images/nginx.png"),
        color: Colors.white,
      ),
      link: "https://www.nginx.com/",
      title: "Nginx",
    ),
    HomeItemButton(
      icon: LineIcons.docker,
      link: "https://www.docker.com/",
      title: "Docker",
    ),
    HomeItemButton(
      icon: LineIcons.jenkis,
      link: "https://www.jenkins.io/",
      title: "Jenkins",
    ),
  ];
}
