import 'package:coffee_shop_app/product/constants/asset_constants.dart';
import 'package:coffee_shop_app/product/constants/color_constants.dart';
import 'package:coffee_shop_app/product/constants/string_constants.dart';
import 'package:coffee_shop_app/view/home/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class LocationHeader extends StatelessWidget {
  final Size size;
  const LocationHeader({required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: BoxDecoration(color: ColorConstants.blackColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 80, right: 20),
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
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      StringConstants.newYork,
                      style: const TextStyle(
                        color: ColorConstants.whiteColor,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 4),
                    ImageIcon(
                      AssetImage(AssetConstants.iconDropDown),
                      color: ColorConstants.whiteColor,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            SearchBarWidet(),
          ],
        ),
      ),
    );
  }
}
