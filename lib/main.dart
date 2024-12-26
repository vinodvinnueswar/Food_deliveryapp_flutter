import'package:flutter/material.dart';
import 'package:fooddeliveryproto/Food_Categories/Restuarant_Menu.dart';
import 'package:fooddeliveryproto/pages/HomePage.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => RestaurantMenu()),
    ],
   child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}