import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/models/drawerItems.dart';
import 'package:myapp/widget/avatar.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  Widget _header(var size) {
    return Container(
      height: 80,
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _text(
                'Mohamed Filahi',
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                'Active status',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: AvatarWidget(),
          ),
        ],
      ),
    );
  }

  Widget _body(var size) {
    return Padding(
      padding: EdgeInsets.only(
        top: 50.0,
      ),
      child: Container(
        height: size.height * .50,
        width: size.width,
        child: ListView.builder(
          itemCount: drawerItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      drawerItems[index].icon,
                      SizedBox(
                        width: 10.0,
                      ),
                      _text(drawerItems[index].name),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  index == 0
                      ? Padding(
                          padding: EdgeInsets.only(
                            left: 42.0,
                          ),
                          child: Container(
                            height: 2,
                            width: 75,
                            color: Colors.white,
                          ),
                        )
                      : Container(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _text(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _bottom(var size) {
    return Container(
      height: 100,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              _text('Settings'),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Row(
              children: <Widget>[
                _text('Log out'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _header(size),
              _body(size),
              _bottom(size),
            ],
          ),
        ),
      ),
    );
  }
}
