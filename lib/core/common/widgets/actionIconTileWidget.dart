import 'package:flutter/material.dart';

class ActionsIconTileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color desiredCoolor;
  const ActionsIconTileWidget(
      {Key? key, required this.title, required this.icon, required this.desiredCoolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color:desiredCoolor,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}