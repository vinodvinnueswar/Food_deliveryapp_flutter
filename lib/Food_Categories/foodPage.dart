import 'package:flutter/material.dart';
import 'package:fooddeliveryproto/Food_Categories/Food_tile.dart';
import 'package:fooddeliveryproto/Food_Categories/Restuarant_Menu.dart';
import 'package:fooddeliveryproto/Food_Categories/food.dart';
import 'package:fooddeliveryproto/components/My_Sliver_AppBar.dart';
import 'package:fooddeliveryproto/components/My_tabBar.dart';
import 'package:provider/provider.dart';

import '../components/My_RestuarentSliverBar.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> with SingleTickerProviderStateMixin {
  //TabBar controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this) ;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();

  }

  //Sort out and return a list of food items that belongs to a specific category
  List<Food>_filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return list of Food items given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        itemBuilder: (context , index){
         //return indiviual food
         final food =categoryMenu[index];
         
          //return food tile ui
        return FoodTile(food: food, onTap: (){});
      });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             body: NestedScrollView(
              headerSliverBuilder: (context ,innerBoxIsScrolled) => [
               MyRestuarantSliverBar(
                child: Container(
                  child: Image.asset('lib/images/RestuarentH1.png',
                  fit: BoxFit.cover,),
                ),
             
                title:MyTabBar(tabController: _tabController)
                ),
              
              ],
              body: Consumer<RestaurantMenu>(builder: (context , restaurantmenu ,child) =>
              TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(restaurantmenu.menu))),
             ),      
            
    );
  }
}