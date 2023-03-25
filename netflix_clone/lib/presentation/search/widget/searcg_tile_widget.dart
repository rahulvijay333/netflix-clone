import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class TopSearchTile extends StatelessWidget {
  const TopSearchTile({Key? key, required this.sTitle, required this.movieUrl})
      : super(key: key);
  final String sTitle;
  final String movieUrl;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            width: screenWidth * 0.4,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(movieUrl), fit: BoxFit.cover))),
        const SizedBox(
          width: 5,
        ),
        Expanded(
            child: Text(
          sTitle,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        )),
        const CircleAvatar(
          radius: 23,
          backgroundColor: kwhiteColor,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 20,
            child: Center(
              child: Icon(
                CupertinoIcons.play_fill,
                color: kwhiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
