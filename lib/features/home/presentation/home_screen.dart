import 'package:blinkit_clone/core/constants/custom_colors.dart';
import 'package:blinkit_clone/core/helpers/ui_helpers.dart';
import 'package:blinkit_clone/core/provider/product_provider.dart';
import 'package:blinkit_clone/core/widgets/category_item.dart';
import 'package:blinkit_clone/core/widgets/custom_app_bar.dart';
import 'package:blinkit_clone/core/widgets/festive_item.dart';
import 'package:blinkit_clone/core/widgets/product_item.dart';
import 'package:blinkit_clone/core/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final products = productProvider.getFestiveItems;
    final homeProducts = productProvider.getHomeProducts;
    final categoryRowFirst = productProvider.getCategoryFirstRow;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              CustomAppBar(backgroundColor: CustomColors.red),
              Container(
                margin: const EdgeInsets.only(top: 1),
                color: CustomColors.red,
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        UIHelpers.customImage(imageName: "crakers.png"),
                        UIHelpers.customImage(imageName: "craker.png"),
                        Text(
                          "Mega Diwali Sale",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        UIHelpers.customImage(imageName: "craker.png"),
                        UIHelpers.customImage(imageName: "crakers.png"),
                      ],
                    ),
                    DefSpacer(),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        itemBuilder: (ctx, ind) =>
                            FestiveItem(product: products[ind]),
                      ),
                    ),
                  ],
                ),
              ),
              DefSpacer(value: 20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .stretch,
                  children: [
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: homeProducts.length,
                        itemBuilder: (ctx, ind) =>
                            ProductItem(product: homeProducts[ind]),
                      ),
                    ),
                    UIHelpers.customTitle(text: "Grocery & Kitchen"),
                    DefSpacer(),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        scrollDirection: .horizontal,
                        itemCount: categoryRowFirst.length,
                        itemBuilder: (ctx, ind) =>
                            CategoryItem(item: categoryRowFirst[ind]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
