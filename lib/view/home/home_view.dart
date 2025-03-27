import 'package:coffee_shop_app/view/home/widgets/location_header.dart';
import 'package:coffee_shop_app/view/home/widgets/promo_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              LocationHeader(size: size),
            ],
          ),
          Positioned(
            top: size.height * 0.29,
            left: 18,
            right: 18,
            child: PromoCard(size: size),
          ),
        ],
      ),
    );
  }
}




