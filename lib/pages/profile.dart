import 'package:flutter/material.dart';
import '../widgets/ProfilePicture.dart';
import '../widgets/InfoItem.dart';
import '../widgets/Storyitem.dart';
import '../widgets/TabItem.dart';
import '../widgets/bottomNavbar.dart';
import 'dart:math';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Random isRandom = Random();
    int isSum = isRandom.nextInt(100)+1;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                "lbprmdhn_",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              Icon(
                size: 28,
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
            ],
          ),
          actions: [
            IconButton(
                padding: EdgeInsets.all(10),
                onPressed: () {},
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                )),
            IconButton(
                padding: EdgeInsets.all(10),
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          ],
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(10, "Post"),
                      InfoItem(999, "Followers"),
                      InfoItem(999, "Followings"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "warga sipil",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                text: TextSpan(
                  text: "maf y sibuk",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "s.id/LinkedIn",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryItem("Hola", 1),
                    StoryItem("VitSea", 1),
                    StoryItem("AffaIyah", 1),
                    StoryItem("RilKah", 1),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabItem(Icons.grid_on_outlined, true),
                TabItem(Icons.person_outline, false),
                // Expanded(
                //     child: Icon(Icons.person_outline),
                //   ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 25,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => Image.network(
                "https://picsum.photos/id/${isSum++}/200/300",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavbar(),
        );
  }
}

