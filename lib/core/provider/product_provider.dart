import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final String imagePath;
  final double price;

  const Product({
    required this.name,
    required this.imagePath,
    required this.price,
  });
}

class ProductProvider with ChangeNotifier {
  final List<Product> _bestSellerItems = [
    Product(
      name: "Amul Taaza Toned Fresh Milk",
      imagePath: "assets/images/milk.png",
      price: 27,
    ),
    Product(
      name: "Potato (Aloo)",
      imagePath: "assets/images/potato.png",
      price: 37,
    ),
    Product(
      name: "Hybrid Tomato",
      imagePath: "assets/images/tomato.png",
      price: 57,
    ),
  ];

  List<Product> get getBestSellerItems {
    return [..._bestSellerItems];
  }
}
