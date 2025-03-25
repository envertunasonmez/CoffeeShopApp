import 'package:coffee_shop_app/product/constants/asset_constants.dart';
import 'package:coffee_shop_app/product/constants/color_constants.dart';
import 'package:coffee_shop_app/product/constants/string_constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.35,
            decoration: BoxDecoration(color: ColorConstants.blackColor),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConstants.location,
                    style: TextStyle(
                      color: ColorConstants.lightGreyColor,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        StringConstants.newYork,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 4),
                      ImageIcon(
                        AssetImage(AssetConstants.iconDropDown),
                        color: ColorConstants.whiteColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
