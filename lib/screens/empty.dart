import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            35.0,
          ),
          color: Colors.white.withOpacity(
            0.6,
          ),
        ),
        duration: Duration(
          milliseconds: 120,
        ),
        transform: Matrix4.translationValues(260, 150, 0)..scale(0.62),
      ),
    );
  }
}
