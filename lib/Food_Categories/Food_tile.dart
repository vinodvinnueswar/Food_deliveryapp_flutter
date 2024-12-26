import 'package:flutter/material.dart';

import 'food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  void Function()? onTap;
  
   FoodTile({super.key,
  required this.food,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              
              children: [
                  
                  //Food Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(food.name,
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                        SizedBox(height: 7,),
                        Text('\$'+ food.price.toString(),
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                        
                        SizedBox(height: 10,),
                        Text(food.description,style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  
                  SizedBox(width: 9,),
                  //food image
                  Container(
                    height: 120,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                     
                      boxShadow: [
                      BoxShadow(
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0,3)
                      )
                      ]
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(food.imagePath,
                      fit:BoxFit.cover),
                    ),
                  ),
                  
              ]),
          ),
        ),
        Divider(thickness: 2,),
      ],
    );
  }
}