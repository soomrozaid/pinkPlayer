import 'package:flutter/material.dart';
import 'package:pinkPlayer/color.dart';
import 'package:pinkPlayer/component/albumart.dart';
import 'package:pinkPlayer/component/navbar.dart';
import 'package:pinkPlayer/component/playerControls.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return AlbumArt();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'Lover',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: darkPrimaryColor,
            ),
          ),
          Text(
            'You Need To Calm Down',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: darkPrimaryColor,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 5,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
            child: Slider(
              value: sliderValue,
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          PlayerControls(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
