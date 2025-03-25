import 'package:coffee_shop_app/product/constants/color_constants.dart';
import 'package:coffee_shop_app/product/constants/string_constants.dart';
import 'package:coffee_shop_app/view/home/home_view.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final Size size;
  final BuildContext context;

  const OnboardingButton(
      {super.key, required this.size, required this.context});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ElevatedButton(
          onPressed: () => _navToHome(context),
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              splashFactory: NoSplash.splashFactory),
          child: Text(
            StringConstants.getStarted,
            style: TextStyle(color: ColorConstants.whiteColor, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

void _navToHome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomeView()),
  );
}
