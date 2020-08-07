import 'package:flutter/material.dart';
import 'package:pinkPlayer/color.dart';

class NavbarItem extends StatelessWidget {
  final IconData icon;
  NavbarItem({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20),
        ],
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon),
    );
  }
}
