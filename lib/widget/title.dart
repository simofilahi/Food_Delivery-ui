import 'package:flutter/material.dart';
import '../constants.dart';

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Food\n',
            style: TextStyle(
              fontSize: 30.0,
              color: orange,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Delivery',
            style: TextStyle(
              fontSize: 30.0,
              color: orange,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
