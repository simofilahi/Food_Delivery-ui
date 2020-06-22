import 'package:flutter/material.dart';

import '../constants.dart';

class SearchBarWidget extends StatelessWidget {
  final size;
  final text;

  SearchBarWidget({@required this.size, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: size.width * .85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15.0,
            ),
          ),
          border: Border.all(
            width: 0.5,
            color: grey,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 10.0,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
              hintStyle: TextStyle(
                color: Colors.grey[400],
              ),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey[800],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
