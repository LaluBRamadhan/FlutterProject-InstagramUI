import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  InfoItem(this.val, this.title);

  final int val;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${val}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text("${title}"),
      ],
    );
  }
}