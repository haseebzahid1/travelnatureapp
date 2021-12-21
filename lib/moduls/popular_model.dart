import 'package:flutter/material.dart';

class Popular {
  final String img;
  final Color color;

  Popular({
    required this.img,
    required this.color,

  });
}

List<Popular> popularLists = [
  Popular(
    img: "assets/images/img_beach.png", color: Color(0xFFFEF1ED),
  ), Popular(
    img: "assets/images/img_mountain.png", color: Color(0xFFEDF6FE),
  ), Popular(
    img: "assets/images/img_lake.png", color: Color(0xFFFEF6E8),
  ), Popular(
    img: "assets/images/img_river.png", color: Color(0xFFEAF8E8),
  ),
];

