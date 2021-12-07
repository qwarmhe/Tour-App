import 'package:flutter/material.dart';
import 'package:master_demo/misc/colors.dart';
import 'package:master_demo/widgets/app_text.dart';

class AppButtons extends StatelessWidget {

  String? text;
  IconData? icon;
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButtons(
    { Key? key,
    this.isIcon= false,
    this.text,
    this.icon,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color:borderColor,
          width:1.0
        ),
      borderRadius:BorderRadius.circular(15),
      color:backgroundColor
      ),
      child: isIcon==false? 
      Center(
        child: AppText(
          text: text!, 
          color: color)):
          Center(child: Icon(icon, color:color)),
          
    );
  }
}