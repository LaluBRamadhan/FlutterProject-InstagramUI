import 'package:flutter/material.dart';
class TabItem extends StatelessWidget {
  TabItem(this.icon, this.isActive);

  final bool isActive;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive == true ? Colors.black : Colors.white,
              width: 2,
            ),
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}