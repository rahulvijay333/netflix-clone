import 'package:flutter/material.dart';

class MainCardTileWidgetCustom extends StatelessWidget {
  
  const MainCardTileWidgetCustom({
    Key? key,required this.customurl
  }) : super(key: key);

final String customurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(fit: BoxFit.fill,
              image: NetworkImage(
                  customurl ))),
      //color: Colors.amber,
      height: 220,
      width: 160,
    );
  }
}
