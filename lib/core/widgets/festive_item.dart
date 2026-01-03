import 'package:blinkit_clone/core/provider/product_provider.dart';
import 'package:blinkit_clone/core/widgets/spacer.dart';
import 'package:flutter/material.dart';

import '../constants/custom_colors.dart';

class FestiveItem extends StatelessWidget {
  final FestiveCategoryItem product;
  const FestiveItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.bgGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      width: 100,
      height: 200,
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
        top: 15,
        bottom: 2,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Text(
            product.name,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
            textAlign: .center,
          ),
          DefSpacer(),
          Image.asset(product.image)
        ],
      ),
    );
  }
}
