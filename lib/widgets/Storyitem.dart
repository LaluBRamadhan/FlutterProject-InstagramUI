import 'package:flutter/material.dart';
import 'dart:math';

class StoryItem extends StatelessWidget {
  StoryItem(this.title, this.sum);

  final String title;
  int sum;

  @override
  Widget build(BuildContext context) {
    Random rand = Random();
    int sumNum = rand.nextInt(255);
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[100],
                ),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://picsum.photos/id/${sum = sumNum}/200/300"),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text("${title}"),
        ],
      ),
    );
  }
}
