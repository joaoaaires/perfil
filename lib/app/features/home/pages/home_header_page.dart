import 'package:flutter/material.dart';

import '../widgets/home_social_media_widget.dart';

class HomeHeaderPage extends StatelessWidget {
  const HomeHeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorPrimary = Theme.of(context).primaryColor;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 40,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage("images/background.jpg"),
          colorFilter: ColorFilter.mode(
            colorPrimary.withValues(alpha: 0.0),
            BlendMode.multiply,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: HomeSocialMediaWidget(),
        ),
      ),
    );
  }
}
