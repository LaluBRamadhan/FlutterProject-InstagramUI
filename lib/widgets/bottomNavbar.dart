import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
      BottomNavigationBarItem(icon: Icon(
        color: Colors.black,
        Icons.home_outlined),
        label: "",
        ),
      BottomNavigationBarItem(icon: Icon(
        color: Colors.black,
        Icons.search_rounded),
        label: "Seach",
        ),
      BottomNavigationBarItem(icon: Icon(
        color: Colors.black,
        Icons.add_box_outlined),
        label: "Add",
        ),
      BottomNavigationBarItem(icon: Icon(
        color: Colors.black,
        Icons.shopping_bag_rounded),
        label: "Shop",
        ),
      BottomNavigationBarItem(icon: Icon(
        color: Colors.black,
        Icons.person),
        label: "Profile",
        ),
      
    ]);
  }
}
