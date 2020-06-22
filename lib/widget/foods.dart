import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/constants.dart';
import '../models/countryFoodsCategory.dart';

class FoodsWidget extends StatelessWidget {
  Widget _foodInfos(var foodList, int index) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            foodList[index].foodName,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            foodList[index].description,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            foodList[index].recipes,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'from',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      ' \$${foodList[index].price.toString()}',
                      style: TextStyle(
                        color: orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[100],
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: orange,
                          size: 24.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/chef.svg',
                          height: 20.0,
                          width: 20.0,
                          color: orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _foodImage(var foodList, int index) {
    return Container(
      height: 145,
      width: 120,
      decoration: BoxDecoration(
        color: rose.withOpacity(
          0.6,
        ),
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 2,
            right: 5,
            child: Container(
              height: 40,
              width: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 20.0,
                  ),
                  Text(
                    foodList[index].rate.toString(),
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                      offset: Offset(0, -8),
                      color: rose.withOpacity(0.7),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      20.0,
                    ),
                    bottomRight: Radius.circular(
                      20.0,
                    ),
                    topLeft: Radius.circular(
                      60.0,
                    ),
                    topRight: Radius.circular(
                      60.0,
                    ),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      foodList[index].imageUrl,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _rowItem(var foodList, var index) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      child: Row(
        children: <Widget>[
          _foodImage(foodList, index),
          SizedBox(
            width: 25.0,
          ),
          _foodInfos(foodList, index),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var item = countryFoodCategory
        .where((item) => item.isActive)
        .map((f) => f.foods)
        .toList();
    var foodList = item[0];
    foodList.map((f) => print(f.imageUrl)).toList();
    return Container(
      height: size.height * .45,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: foodList.length,
        itemBuilder: (BuildContext context, int index) {
          return _rowItem(foodList, index);
        },
      ),
    );
  }
}
