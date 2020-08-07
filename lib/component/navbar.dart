import 'package:flutter/material.dart';
import 'package:pinkPlayer/color.dart';
import 'package:pinkPlayer/component/navbarItem.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavbarItem(icon: Icons.arrow_back_ios),
          Text(
            'Playing Now',
            style: TextStyle(
              fontSize: 20,
              color: darkPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          NavbarItem(icon: Icons.list),
        ],
      ),
    );
  }
}
