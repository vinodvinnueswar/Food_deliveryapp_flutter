import 'package:flutter/material.dart';
import 'package:fooddeliveryproto/pages/HomePage.dart';

import '../pages/OrderPage.dart';
import '../pages/ProfilePage.dart';
import '../pages/WalletPage.dart';


class BootomNavBAr extends StatefulWidget {
  const BootomNavBAr({super.key});

  @override
  State<BootomNavBAr> createState() => _BootomNavBArState();
}

class _BootomNavBArState extends State<BootomNavBAr> {

  int currentIndex = 0;

 late List<Widget> Pages;
 late HomePage home;
 late OrderPage order;
 late Profile profile;
 late Wallet wallet;

@override
  void initState() {
    
     home = HomePage();
     order = OrderPage();
     profile = Profile();
     wallet = Wallet();
     Pages = [home , profile ,order ,wallet];


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      
    );
  }
}