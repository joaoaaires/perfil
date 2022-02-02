import 'package:flutter/material.dart';

class HomeSocialMediaPhotoWidget extends StatelessWidget {
  const HomeSocialMediaPhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      maxRadius: 85,
      minRadius: 35,
      backgroundImage: AssetImage("images/perfil.jpg"),
    );
  }
}
