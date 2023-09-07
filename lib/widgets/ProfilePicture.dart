import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90 / 2),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red,
                    Color.fromARGB(255, 255, 110, 199),
                    Colors.amber,
                  ])),
        ),
        Container(
          width: 82,
          height: 82,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(82 / 2),
              image: DecorationImage(
                image: NetworkImage(
                  "https://picsum.photos/200/300?grayscale",
                ),
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
