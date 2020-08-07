import 'package:flutter/material.dart';
import 'package:pinkPlayer/color.dart';

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT_6DLBVtnfizFKtaGDLgU7OQhbNjOLkhpqCw&usqp=CAU',
          fit: BoxFit.fill,
        ),
      ),
      decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: darkPrimaryColor,
              offset: Offset(20, 8),
              spreadRadius: 3,
              blurRadius: 25,
            ),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-3, -4),
                spreadRadius: -2,
                blurRadius: 20),
          ],
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
