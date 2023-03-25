import 'dart:math';

import 'package:flutter/material.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {Key? key,
      this.angle = 0,
      required this.imageList,
      required this.margin,
      required this.size})
      : super(key: key);

  //final Size size;
  final double angle;
  final String imageList;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
   
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.4,
        height: size.width * 0.60,
        
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: NetworkImage(imageList),
            )),
      ),
    );
  }
}
