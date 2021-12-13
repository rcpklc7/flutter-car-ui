import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constanins.dart';

class Light extends StatelessWidget {
  const Light({
    Key? key,
    required this.press,
    required this.isLight,
  }) : super(key: key);

  final VoidCallback press;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        duration: defaultDuration,
        switchInCurve: Curves.easeInOutBack,
        transitionBuilder: (child, animation) => ScaleTransition(
          alignment: Alignment.center,
          scale: animation,
          child: child,
        ),
        child: isLight
            ? Image.asset(
          "assets/images/bulb.png",height: 50,width: 50,color: Colors.white,
          key: ValueKey("on"),
        )
            : Image.asset(
          "assets/images/bulb.png",height: 50,width: 50,color: Colors.blueAccent,
          key: ValueKey("of"),
        ),
      ),
    );
  }
}
