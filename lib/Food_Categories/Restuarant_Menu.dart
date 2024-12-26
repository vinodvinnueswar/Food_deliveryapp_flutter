
import 'package:flutter/material.dart';
import 'package:fooddeliveryproto/Food_Categories/food.dart';

class RestaurantMenu extends ChangeNotifier{
  //List of Food Menu
  final List<Food> _menu = [
    //Tiffins
    Food(
     name: 'Idly',
     description: 'According to the Food and Brand Lab at Cornell University,. ', 
     imagePath: 'lib/images/Tiffins/idly.png', 
     price: 50, 
     category: FoodCategory.Tiffins, 
     avaiableAddons: [
      Addon(name: 'chatney', price: 40),
     ]),

      Food(
     name: 'Idly',
     description: 
     'According to the Food and Brand Lab at Cornell University,. ', 
     imagePath: 'lib/images/Tiffins/Poori.png', 
     price: 50, 
     category: FoodCategory.Tiffins, 
     avaiableAddons: [
      Addon(name: 'chatney', price: 40),
     ]),

      Food(
     name: 'Idly',
     description: 
     'According to the Food and Brand Lab at Cornell University,. ', 
     imagePath: 'lib/images/Tiffins/idly.png', 
     price: 50, 
     category: FoodCategory.Tiffins, 
     avaiableAddons: [
      Addon(name: 'chatney', price: 40),
     ]),

      Food(
     name: 'Idly',
     description: 
     'According to the Food and Brand Lab at Cornell University,. ', 
     imagePath: 'lib/images/Tiffins/chapati.png', 
     price: 50, 

     category: FoodCategory.Tiffins, 
     avaiableAddons: [
      Addon(name: 'chatney', price: 40),
     ]),

      Food(
     name: 'Idly',
     description: 
     'According to the Food and Brand Lab at Cornell University,. ', 
     imagePath: 'lib/images/Tiffins/vada.png', 
     price: 50, 
     category: FoodCategory.Tiffins, 
     avaiableAddons: [
      Addon(name: 'chatney', price: 40),
     ]),


    //Lunch
    Food(
      name: 'Rice&thalli', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Lunch/LunchBox1.png', 
      price: 100, 
      category: FoodCategory.Lunch, 
      avaiableAddons: [
        Addon(name: 'Currey', price: 30),
      ]),

      Food(
      name: 'Rice&thalli', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Lunch/LunchBox2.png', 
      price: 100, 
      category: FoodCategory.Lunch, 
      avaiableAddons: [
        Addon(name: 'Currey', price: 30),
      ]),

      Food(
      name: 'Rice&thalli', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Lunch/LunchBox3.png', 
      price: 100, 
      category: FoodCategory.Lunch, 
      avaiableAddons: [
        Addon(name: 'Currey', price: 30),
      ]),

      Food(
      name: 'Rice&thalli', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Lunch/LunchBox4.png', 
      price: 100, 
      category: FoodCategory.Lunch, 
      avaiableAddons: [
        Addon(name: 'Currey', price: 30),
      ]),

      Food(
      name: 'Rice&thalli', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Lunch/LunchBox5.png', 
      price: 100, 
      category: FoodCategory.Lunch, 
      avaiableAddons: [
        Addon(name: 'Currey', price: 30),
      ]),

      //Dinner
      Food(
      name: 'Dinner', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Dinner/DinnerBox1.png', 
      price: 90, 
      category: FoodCategory.Dinner, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      Food(
      name: 'Dinner', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Dinner/DinnerBox2.png', 
      price: 90, 
      category: FoodCategory.Dinner, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      Food(
      name: 'Dinner', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Dinner/DinnerBox3.png', 
      price: 90, 
      category: FoodCategory.Dinner, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      Food(
      name: 'Dinner', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Dinner/DinnerBox4.png', 
      price: 90, 
      category: FoodCategory.Dinner, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      Food(
      name: 'Dinner', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Dinner/DinnerBox4.png', 
      price: 90, 
      category: FoodCategory.Dinner, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      //salads
      Food(
      name: 'Saladr', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Salads/vegSalads1.png', 
      price: 90, 
      category: FoodCategory.Salads, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

       Food(
      name: 'Saladr', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Salads/vegSalads2.png', 
      price: 90, 
      category: FoodCategory.Salads, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

       Food(
      name: 'Saladr', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Salads/vegSalad3.png', 
      price: 90, 
      category: FoodCategory.Salads, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

       Food(
      name: 'Saladr', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Salads/vegSalad4.png', 
      price: 90, 
      category: FoodCategory.Salads, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

       Food(
      name: 'Saladr', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Salads/vegSalad5.png', 
      price: 90, 
      category: FoodCategory.Salads, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),
    
      //Drinks
       Food(
      name: 'Drinks', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Drinks/Drinks2.png', 
      price: 90, 
      category: FoodCategory.Drinks, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      Food(
      name: 'Drinks', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Drinks/Drinks2.png', 
      price: 90, 
      category: FoodCategory.Drinks, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      Food(
      name: 'Drinks', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Drinks/Drinks3.png', 
      price: 90, 
      category: FoodCategory.Drinks, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      Food(
      name: 'Drinks', 
      description: 'According to the Food and Brand Lab at Cornell University,. ', 
      imagePath: 'lib/images/Drinks/Drinks4.png', 
      price: 90, 
      category: FoodCategory.Drinks, 
      avaiableAddons:[
        Addon(name: 'currey', price: 50),
      ]),

      
  ];
  /*
  GETTETR
  */
  List<Food> get menu => _menu;
}