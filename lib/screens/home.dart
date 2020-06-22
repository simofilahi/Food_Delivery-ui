import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/widget/avatar.dart';
import 'package:myapp/widget/foods.dart';
import 'package:myapp/widget/searchBar.dart';
import 'package:myapp/widget/title.dart';
import 'package:myapp/models/countryFoodsCategory.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffest = 0;
  double yOffest = 0;
  double scaleFactor = 1;

  Widget _appBarWidget(var size) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              setState(
                () {
                  xOffest = 280;
                  yOffest = 120;
                  scaleFactor = 0.7;
                },
              );
            },
            icon: Icon(Icons.menu),
            color: grey,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300],
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/bag.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          color: orange,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15.0,
                ),
                AvatarWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _foodCategory() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: countryFoodCategory.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.0,
                ),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    color: countryFoodCategory[index].isActive
                        ? orange
                        : Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                        color: grey[200],
                      )
                    ],
                  ),
                  child: Center(
                    child: countryFoodCategory[index].iconFood,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                children: <Widget>[
                  Text(
                    countryFoodCategory[index].countryName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  countryFoodCategory[index].isActive
                      ? Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.0,
                              ),
                              child: Container(
                                width: 40.0,
                                height: 2.0,
                                color: Colors.deepOrange[900],
                              ),
                            ),
                          ],
                        )
                      : Container(),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  Widget _bodyWidget(var size) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(),
            TitleWidget(),
            SizedBox(
              height: 15.0,
            ),
            SearchBarWidget(
              size: size,
              text: 'Search directly for what you want to eat',
            ),
            SizedBox(
              height: 20.0,
            ),
            _foodCategory(),
            SizedBox(
              height: 20.0,
            ),
            FoodsWidget(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          xOffest = 0;
          yOffest = 0;
          scaleFactor = 1;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              xOffest > 0 ? 35.0 : 0,
            ),
            topLeft: Radius.circular(
              xOffest > 0 ? 35.0 : 0,
            ),
          ),
        ),
        height: size.height,
        transform: Matrix4.translationValues(xOffest, yOffest, 0)
          ..scale(scaleFactor),
        duration: Duration(
          milliseconds: 250,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 5.0,
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                _appBarWidget(size),
                _bodyWidget(size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
