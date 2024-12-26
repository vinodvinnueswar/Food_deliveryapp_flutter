import 'package:flutter/material.dart';
import 'package:fooddeliveryproto/Food_Categories/foodPage.dart';

import '../Elements/ListOfItems.dart';

class RestuarentList extends StatelessWidget {
  RestuarentList({super.key});

  @override
  Widget build(BuildContext context) {
     //Restuarents List
     return 
      GestureDetector(
        //redirect Food Page
        onTap: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => FoodPage(),));
        },
        child: ListView.builder(
          itemCount: Restaurants.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (Context ,index){
            var Robj = Restaurants[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 3,
                    offset: Offset(0, 3),
                    color: Colors.white,
                    
                  )
                ]
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(Robj['image'].toString(),
                    fit: BoxFit.cover,
                    height: 130,
                    width: 200,
                    ),
                  ),

                  Text(Robj['name'])
                  
                ],
              ),
              );
      
        }),
      );
      
               
          
}
}