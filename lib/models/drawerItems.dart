import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItems {
  String name;
  SvgPicture icon;

  DrawerItems({this.name, this.icon});
}

final List<DrawerItems> drawerItems = [
  DrawerItems(
    name: 'Order Food',
    icon: SvgPicture.asset(
      'assets/icons/spoon.svg',
      height: 20,
      width: 20,
      color: Colors.white,
    ),
  ),
  DrawerItems(
    name: 'Restaurants',
    icon: SvgPicture.asset(
      'assets/icons/food-and-restaurant.svg',
      height: 20,
      width: 20,
      color: Colors.white,
    ),
  ),
  DrawerItems(
    name: 'Customized dish',
    icon: SvgPicture.asset(
      'assets/icons/store.svg',
      height: 20,
      width: 20,
      color: Colors.white,
    ),
  ),
  DrawerItems(
    name: 'Favorites',
    icon: SvgPicture.asset(
      'assets/icons/heart.svg',
      height: 20,
      width: 20,
      color: Colors.white,
    ),
  ),
  DrawerItems(
    name: 'Location',
    icon: SvgPicture.asset(
      'assets/icons/location.svg',
      height: 20,
      width: 20,
      color: Colors.white,
    ),
  ),
  DrawerItems(
    name: 'Profile',
    icon: SvgPicture.asset(
      'assets/icons/user.svg',
      height: 20,
      width: 20,
      color: Colors.white,
    ),
  ),
];
