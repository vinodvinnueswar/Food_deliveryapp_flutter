import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {

  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key , 
  required this.child,
  required this.title});
  

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 220,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [

        // cart Button
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.shopping_bag_outlined))
      ],
      backgroundColor: Colors.black,
      
      title: Text("N U T R I  O N S"),
      flexibleSpace: FlexibleSpaceBar(
        background: child ,
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0,right: 0,top: 0),
        expandedTitleScale: 1,

      ),


    );
  }
}