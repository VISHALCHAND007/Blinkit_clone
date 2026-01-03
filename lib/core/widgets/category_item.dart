import 'package:blinkit_clone/core/provider/product_provider.dart';
import 'package:flutter/material.dart';

import '../constants/custom_colors.dart';

class CategoryItem extends StatelessWidget {
  final FestiveCategoryItem item;
  const CategoryItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 85,
      child: Column(
        children: [
          Container(
            height: 100,
            // width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: CustomColors.bgBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(item.image),
          ),
          Text(
            item.name,
            textAlign: .center,
            style: TextStyle(fontSize: 10),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
