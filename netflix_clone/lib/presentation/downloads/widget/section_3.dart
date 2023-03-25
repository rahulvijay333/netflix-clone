//section 3 - material buttons

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/common/constants.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
            width: size.width * 0.8,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Set Up ',
                  style: TextStyle(
                      color: kwhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              color: Colors.deepPurple[700],
            )),
        kButtonHeight,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'See What You Can Download ',
              style: TextStyle(
                  color: KBlackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          color: kwhiteColor,
        )
      ],
    );
  }
}
