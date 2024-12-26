import 'package:flutter/material.dart';
import 'package:fooddeliveryproto/components/My_Sliver_AppBar.dart';
import 'package:fooddeliveryproto/pages/NestedScrollBar.dart';
import 'package:fooddeliveryproto/search_Bar/Search_Bar.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key , 
  
  });

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

          body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  child: 
                  Stack(
                    children: [
                        Expanded(
                          child: Container(
                            width: 800,
                            child: Image.asset('lib/images/RestuarentH1.png',
                            fit: BoxFit.cover,)
                            ),
                        ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      )
                    ],
                  ),                  
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: SearchBar(),
                  ),
                )
              
               
              ],
            
              body: NestedScrollBar(),
            ),
          ),

    );
  }
}