import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Foods {
  final String foodName;
  final String description;
  final String recipes;
  final String imageUrl;
  final double rate;
  final double price;

  Foods({
    this.foodName,
    this.description,
    this.recipes,
    this.imageUrl,
    this.rate,
    this.price,
  });
}

class CountryFoodCategory {
  final countryName;
  final SvgPicture iconFood;
  final bool isActive;
  final List<Foods> foods;

  CountryFoodCategory({
    @required this.countryName,
    @required this.iconFood,
    this.isActive = false,
    @required this.foods,
  });
}

final List<CountryFoodCategory> countryFoodCategory = [
  CountryFoodCategory(
    countryName: 'American',
    iconFood: SvgPicture.asset(
      'assets/icons/burger.svg',
      height: 25,
      width: 25,
      color: Colors.grey[700],
    ),
    foods: [
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/romania-pizza.jpg',
        rate: 3.5,
        price: 10.2,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/romania-pizza.jpg',
        rate: 3.5,
        price: 10.2,
      ),
    ],
  ),
  CountryFoodCategory(
    countryName: 'Mexican',
    iconFood: SvgPicture.asset(
      'assets/icons/taco.svg',
      height: 25,
      width: 25,
      color: Colors.grey[700],
    ),
    foods: [
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/romania-pizza.jpg',
        rate: 3.5,
        price: 10.2,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
    ],
  ),
  CountryFoodCategory(
    countryName: 'Italian',
    iconFood: SvgPicture.asset(
      'assets/icons/fast-food.svg',
      height: 25,
      width: 25,
      color: Colors.white,
    ),
    isActive: true,
    foods: [
      Foods(
        foodName: 'Romana Pizza',
        description: 'Oraginating in Roma',
        recipes: 'recipes',
        imageUrl: 'assets/images/romania-pizza.jpg',
        rate: 3.5,
        price: 5.30,
      ),
      Foods(
        foodName: 'Tomato Pasta',
        description: 'Oraginating in Lazia',
        recipes: 'recipes',
        imageUrl: 'assets/images/pasta.jpg',
        rate: 4.5,
        price: 9.30,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
    ],
  ),
  CountryFoodCategory(
    countryName: 'Chinese',
    iconFood: SvgPicture.asset(
      'assets/icons/pasta.svg',
      height: 25,
      width: 25,
      color: Colors.grey[700],
    ),
    foods: [
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
    ],
  ),
  CountryFoodCategory(
    countryName: 'Moroccan',
    iconFood: SvgPicture.asset(
      'assets/icons/arabic.svg',
      height: 25,
      width: 25,
      color: Colors.grey[700],
    ),
    foods: [
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
      Foods(
        foodName: 'name',
        description: 'description',
        recipes: 'recipes',
        imageUrl: 'assets/images/food.jpg',
        rate: 3.5,
        price: 10.2,
      ),
    ],
  ),
];
