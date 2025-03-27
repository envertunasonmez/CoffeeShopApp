import 'package:coffee_shop_app/product/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CoffeeCategoryList extends StatefulWidget {
  const CoffeeCategoryList({super.key});

  @override
  _CoffeeCategoryListState createState() => _CoffeeCategoryListState();
}

class _CoffeeCategoryListState extends State<CoffeeCategoryList> {
  int selectedIndex = 0;

  final List<String> categories = [
    'All Coffee',
    'Espresso',
    'Latte',
    'Cappucino',
    'Americano',
    'Mocha',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          final isSelected = categories.indexOf(category) == selectedIndex;

          return _buildCategoryItem(category, isSelected);
        }).toList(),
      ),
    );
  }

  Widget _buildCategoryItem(String category, bool isSelected) {
    return GestureDetector(
      onTap: () => _onCategorySelected(category),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isSelected ? ColorConstants.buttonColor : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
          boxShadow: _buildBoxShadow(isSelected),
        ),
        child: Text(
          category,
          style: _buildTextStyle(isSelected),
        ),
      ),
    );
  }

  List<BoxShadow> _buildBoxShadow(bool isSelected) {
    if (isSelected) {
      return [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 5,
          offset: Offset(0, 2),
        ),
      ];
    }
    return [];
  }

  TextStyle _buildTextStyle(bool isSelected) {
    return TextStyle(
      color: isSelected ? ColorConstants.whiteColor : ColorConstants.blackColor,
      fontSize: 16,
      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
    );
  }

  void _onCategorySelected(String category) {
    setState(() {
      selectedIndex = categories.indexOf(category);
    });
  }
}
