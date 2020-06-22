import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(
            'assets/images/avatar.jpg',
          ),
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
