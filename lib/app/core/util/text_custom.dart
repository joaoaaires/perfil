import 'package:flutter/material.dart';

Widget title({
  required String title,
  Color color = Colors.white,
  fontSize = 22,
}) => Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        );