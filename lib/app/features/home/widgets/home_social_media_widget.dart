import 'package:flutter/material.dart';

import 'home_social_media_bio_widget.dart';
import 'home_social_media_photo_widget.dart';

class HomeSocialMediaWidget extends StatelessWidget {
  const HomeSocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          HomeSocialMediaBioWidget(),
          HomeSocialMediaPhotoWidget(),
        ],
      ),
    );
  }
}
