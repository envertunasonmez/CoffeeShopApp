import 'package:coffee_shop_app/product/constants/color_constants.dart';
import 'package:coffee_shop_app/view/onboarding/widgets/onboarding_button.dart';
import 'package:coffee_shop_app/view/onboarding/widgets/onboarding_description.dart';
import 'package:coffee_shop_app/view/onboarding/widgets/onboarding_image.dart';
import 'package:coffee_shop_app/view/onboarding/widgets/onboarding_text.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstants.blackColor,
        body: Stack(
          children: [
            OnboardingImage(size: size),
            OnboardingText(size: size),
            OnboardingDescription(size: size),
            OnboardingButton(size: size, context: context),
          ],
        ),
      ),
    );
  }
}
