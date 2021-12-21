import 'package:flutter/material.dart';
import 'app_text_widge.dart';

class AppButton extends StatelessWidget {
   Color? color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  final String? text;
  final IconData? icon;
  final bool? isIcon;
   AppButton({
    Key? key,
    this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
    this.text= "Hi",
    this.icon,
    this.isIcon=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height:size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor,width: 1),
        borderRadius: BorderRadius.circular(9.6),
        color: backgroundColor,
      ),
      child:isIcon==false? Center(child: AppText(text: text!,size: 18,color:color?? Colors.blue,)):Center(child: Icon(icon,color:color)),
    );
  }
}
