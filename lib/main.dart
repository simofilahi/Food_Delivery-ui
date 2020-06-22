import 'package:flutter/material.dart';
import 'package:myapp/screens/drawer.dart';
import 'package:myapp/screens/empty.dart';
import 'package:myapp/screens/home.dart';

void main() {
  runApp(FoodDelivery());
}

class FoodDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            DrawerWidget(),
            Empty(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
