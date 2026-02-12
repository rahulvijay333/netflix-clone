import 'package:flutter/material.dart';

class IconsPlusTextCreatingWidget extends StatelessWidget {
  const IconsPlusTextCreatingWidget({ Key? key,required this.text,required this.icons, required this.iconColor}) : super(key: key);
  final String text;
  final IconData icons;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icons,color: iconColor ,size: 20,),
      Text(text)
    ],);
  }
}