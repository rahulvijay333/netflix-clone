import 'package:flutter/material.dart';
import 'package:netflix_clone/core/common/constants.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        //Image(image:NetworkImage(url_logo) ,width: 50,height: 80,),,
        const CircleAvatar(
          backgroundImage: NetworkImage(url_logo),
          radius: 25,
          backgroundColor: Colors.transparent,
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
