import 'package:flutter/material.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({Key? key, required this.imageApiUrl}) : super(key: key);
  final String imageApiUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageApiUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
