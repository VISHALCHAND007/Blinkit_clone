import 'package:blinkit_clone/core/provider/product_provider.dart';
import 'package:blinkit_clone/core/widgets/spacer.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Stack(
              clipBehavior: .none,
              children: [
                SizedBox(
                  height: 108,
                  width: 96,
                  child: Image.asset(product.imagePath),
                ),
                Positioned(
                  bottom: -23,
                  right: -7,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      textStyle: TextStyle(fontSize: 7),
                      backgroundColor: Colors.white,
                      minimumSize: const Size(0, 0),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                      side: const BorderSide(color: Colors.green, width: 1),
                    ),
                    child: Text("Add", style: TextStyle(color: Colors.green)),
                  ),
                ),
              ],
            ),
            DefSpacer(),
            Text(
              product.name,
              textAlign: .start,
              style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Image.asset("assets/images/timer.png"),
                Text(
                  " 16 MINS",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            DefSpacer(value: 6),
            Text(
              "₹ ${product.price}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
