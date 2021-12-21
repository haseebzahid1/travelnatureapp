import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double? size;
  final String text;
  final Color color;
   FontWeight? fontWeight;
  AppText({Key? key, required this.text,  this.color = Colors.black54,  this.size, this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(fontSize: size ?? 20,color: color, fontWeight: fontWeight),
    );
  }
}
