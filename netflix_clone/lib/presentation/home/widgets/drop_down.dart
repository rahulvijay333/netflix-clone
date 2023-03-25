import 'package:flutter/material.dart';

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({Key? key, required this.keyValue})
      : super(key: key);
  final String keyValue;

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.keyValue,
      style: const TextStyle(fontSize: 16),
    );
  }
}
