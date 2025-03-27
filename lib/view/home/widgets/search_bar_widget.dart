import 'package:coffee_shop_app/product/constants/asset_constants.dart';
import 'package:coffee_shop_app/product/constants/color_constants.dart';
import 'package:coffee_shop_app/product/constants/string_constants.dart';
import 'package:flutter/material.dart';

class SearchBarWidet extends StatelessWidget {
  const SearchBarWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: ImageIcon(
                AssetImage(AssetConstants.iconSearch),
                color: ColorConstants.whiteColor,
              ),
              hintText: StringConstants.searchHint,
              hintStyle: TextStyle(color: ColorConstants.greyColor),
              filled: true,
              fillColor: ColorConstants.transparentColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: ColorConstants.buttonColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            icon: ImageIcon(
              AssetImage(AssetConstants.iconFilter),
              color: ColorConstants.whiteColor,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
