import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Image.asset('lib/images/GiftCards/bannerKitchen.png',
      fit: BoxFit.cover,
      ),
    );
  }
}