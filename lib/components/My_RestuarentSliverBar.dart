import 'package:flutter/material.dart';

class MyRestuarantSliverBar extends StatelessWidget {

  final Widget child;
  final Widget title;
  const MyRestuarantSliverBar({super.key , 
  required this.child,
  required this.title});
  

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      collapsedHeight: 80,
      floating: false,
      pinned: true,
      actions: [
      ],
      backgroundColor: Colors.black,
      
    
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