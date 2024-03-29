import 'package:flutter/material.dart';

class SubTitleWidgetCustom extends StatelessWidget {
  const SubTitleWidgetCustom({ Key? key ,required this.title}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}