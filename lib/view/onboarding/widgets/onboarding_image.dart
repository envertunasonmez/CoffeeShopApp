import 'package:coffee_shop_app/product/constants/asset_constants.dart';
import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  final Size size;

  const OnboardingImage({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        width: double.infinity,
        height: size.height * 0.67,
        child: Image.asset(
          AssetConstants.onboardingPic,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
