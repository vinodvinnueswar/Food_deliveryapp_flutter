import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryproto/Elements/CategoriesItemsList.dart';
import 'package:fooddeliveryproto/Food_Categories/Restaurant_List.dart';
import '../Elements/ListOfItems.dart';


class NestedScrollBar extends StatelessWidget {
  const NestedScrollBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

         // Carousel Slider
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 10),
            child: SizedBox(
              child: CarouselSlider(
                items: banner
              .map((item) => ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(item['image'],
                fit: BoxFit.cover,
                width: double.infinity,
                ),
              )).toList(),
               options: CarouselOptions(
                height: 200,
                aspectRatio: 17,
                enlargeCenterPage: true,
                autoPlay: true,
                enableInfiniteScroll: true,
                viewportFraction: 0.8
              )
              ),
            ),
          ),
         
         // Food court
          Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Container(
          width: 800,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(234, 165, 54, 26) ,Color.fromRGBO(228, 157, 56, 1)] )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("FOOD COURT",style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
          
            ]
          ),
          
          ), 
          ),

           Divider(thickness: 2,),
          Padding(
            padding: const EdgeInsets.only(top:0),
              child: Container(
                height: 200,
                child: CategorieList()),
            ),
  
          Divider(thickness: 2,),
      
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Popluar Restuarents",
               style: TextStyle(fontSize: 20,
               fontWeight: FontWeight.bold),),
               TextButton(onPressed: (){}, 
               child:Text("View ALL",
               style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200
               ),))
             ],
           ),
         ),
         Divider(thickness: 1,),

           Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topCenter,
                  colors: [Color.fromARGB(255, 177, 237, 108),Color.fromRGBO(88, 170, 236, 1)])
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: RestuarentList(),
              )),
              
              Divider(thickness: 4),
              Container(
                  color: Color.fromARGB(255, 255, 204, 34),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('lib/images/GiftCards/bannerKitchen.png',
                        fit: BoxFit.cover,
                                      ),
                      ),
                    )
                )
                ),
            
     

        ],
      )
    );
  }
}

