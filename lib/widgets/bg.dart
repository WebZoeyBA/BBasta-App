import 'dart:ui';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget child;
  Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/foodbg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Your other widgets here
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
