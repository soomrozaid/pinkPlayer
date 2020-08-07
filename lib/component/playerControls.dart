import 'package:flutter/material.dart';
import 'package:pinkPlayer/component/controls.dart';

class PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Controls(icon: Icons.repeat),
          Controls(icon: Icons.skip_previous),
          Controls(
            icon: Icons.play_arrow,
            middleButton: true,
          ),
          Controls(icon: Icons.skip_next),
          Controls(icon: Icons.shuffle),
        ],
      ),
    );
  }
}
