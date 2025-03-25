import 'package:coffee_shop_app/product/constants/color_constants.dart';
import 'package:coffee_shop_app/product/constants/string_constants.dart';
import 'package:flutter/material.dart';

class OnboardingText extends StatelessWidget {
  final Size size;

  const OnboardingText({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.62,
      left: size.width * 0.1,
      right: size.width * 0.1,
      child: Text(
        StringConstants.onboardingTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorConstants.whiteColor,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              color: Colors.black54,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
      ),
    );
  }
}
