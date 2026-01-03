import 'package:blinkit_clone/core/helpers/ui_helpers.dart';
import 'package:blinkit_clone/core/provider/product_provider.dart';
import 'package:blinkit_clone/core/widgets/category_item.dart';
import 'package:blinkit_clone/core/widgets/custom_app_bar.dart';
import 'package:blinkit_clone/core/widgets/spacer.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final categoryFirstRow = productProvider.getCategoryFirstRow;
    final categorySecondRow = productProvider.getCategorySecondRow;
    final categoryThirdRow = productProvider.getCategoryThirdRow;
    final categoryForthRow = productProvider.getCategoryForthRow;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            DefSpacer(value: 25),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  UIHelpers.customTitle(text: "Grocery & Kitchen"),
                  DefSpacer(),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: .horizontal,
                      itemCount: categoryFirstRow.length,
                      itemBuilder: (ctx, ind) =>
                          CategoryItem(item: categoryFirstRow[ind]),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: .horizontal,
                      itemCount: categorySecondRow.length,
                      itemBuilder: (ctx, ind) =>
                          CategoryItem(item: categorySecondRow[ind]),
                    ),
                  ),
                  UIHelpers.customTitle(text: "Snacks & Drinks"),
                  DefSpacer(),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: .horizontal,
                      itemCount: categoryThirdRow.length,
                      itemBuilder: (ctx, ind) =>
                          CategoryItem(item: categoryThirdRow[ind]),
                    ),
                  ),
                  UIHelpers.customTitle(text: "Household Essentials"),
                  DefSpacer(),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: .horizontal,
                      itemCount: categoryForthRow.length,
                      itemBuilder: (ctx, ind) =>
                          CategoryItem(item: categoryForthRow[ind]),
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
