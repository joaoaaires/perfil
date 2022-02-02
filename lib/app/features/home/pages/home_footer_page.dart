import 'package:flutter/material.dart';

class HomeFooterPage extends StatelessWidget {
  const HomeFooterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 40,
      ),
      color: const Color(0xFF363e45),
      child: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(),
        ),
      ),
    );
  }
}