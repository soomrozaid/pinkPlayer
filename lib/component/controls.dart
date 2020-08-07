import 'package:flutter/material.dart';
import 'package:pinkPlayer/color.dart';

class Controls extends StatelessWidget {
  final IconData icon;
  final bool middleButton;

  Controls({
    this.icon,
    this.middleButton = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: middleButton ? 100 : 60,
      width: middleButton ? 100 : 60,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
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
            blurRadius: 20,
          ),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: middleButton ? darkPrimaryColor : Colors.grey,
                shape: BoxShape.circle,
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
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(middleButton ? 12 : 10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: middleButton ? 50 : 30,
                  color: darkPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
