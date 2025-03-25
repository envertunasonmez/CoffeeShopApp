import 'package:coffee_shop_app/product/constants/string_constants.dart';
import 'package:flutter/material.dart';

class OnboardingDescription extends StatelessWidget {
  final Size size;

  const OnboardingDescription({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          textAlign: TextAlign.center,
          StringConstants.onboardingDescription,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
