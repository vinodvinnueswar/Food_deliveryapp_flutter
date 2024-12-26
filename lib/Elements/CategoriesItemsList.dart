import'package:flutter/material.dart';
import 'package:fooddeliveryproto/Elements/ListOfItems.dart';
import 'package:fooddeliveryproto/Food_Categories/Restuarant_Menu.dart';
import 'package:fooddeliveryproto/Food_Categories/foodPage.dart';

class CategorieList extends StatelessWidget {
  const CategorieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: GestureDetector(
              child: GridView.builder( 
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context , index) {
                var CObj =categories[index] as Map? ?? {};
                return Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          CObj['image'].toString(),
                          width: 80,
                          height: 70,
                          fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 10,),
                      
              
              
              
                         //First layer part
                      //   Image.asset('lib/images/fruits.png',
                      //   fit: BoxFit.cover,) ,
                        
                      Text("Fruits"),
                      // Text("\$200"),
              
                      // const SizedBox(height: 5,),
                      //second layer part
                      //  Image.asset('lib/images/fruits.png',
                      //   fit: BoxFit.cover,) ,
                      // Text("Fruits"),
                      
                  
                      ],),);}
              ),
            
             onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context ) => FoodPage()),);
             }
          
            ),
    );
  }
}