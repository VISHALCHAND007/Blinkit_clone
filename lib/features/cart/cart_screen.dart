import 'package:blinkit_clone/core/helpers/ui_helpers.dart';
import 'package:blinkit_clone/core/provider/product_provider.dart';
import 'package:blinkit_clone/core/widgets/custom_app_bar.dart';
import 'package:blinkit_clone/core/widgets/product_item.dart';
import 'package:blinkit_clone/core/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context).getBestSellerItems;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            DefSpacer(),
            UIHelpers.customImage(imageName: "shopping-cart.png"),
            DefSpacer(),
            Text(
              "Reordering will be easy",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "Items you order will show up here so you can buy\n them again easily.",
              textAlign: .center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              softWrap: true,
            ),
            DefSpacer(value: 25),
            Container(
              height: 250,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Text(
                    "Bestsellers",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    textAlign: .start,
                  ),
                  DefSpacer(),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (ctx, ind) =>
                          ProductItem(product: products[ind]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
