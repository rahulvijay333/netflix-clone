import 'package:flutter/material.dart';
import 'package:netflix_clone/core/common/constants.dart';

class AppBarWidgetCustom extends StatelessWidget {
  const AppBarWidgetCustom({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        kwidth,
       Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue.withOpacity(0.5)),
          child: const Icon(
            Icons.face,
            color: Colors.white,
          ),
        ),
        kwidth
      ],
    );
  }
}
