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

class FestiveCategoryItem {
  final String name;
  final String image;

  const FestiveCategoryItem({required this.name, required this.image});
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

  final List<FestiveCategoryItem> _festiveItems = [
    FestiveCategoryItem(
      name: "Lights, Diyas & Candles",
      image: "assets/images/diyas.png",
    ),
    FestiveCategoryItem(name: "Diwali Gifts", image: "assets/images/gifts.png"),
    FestiveCategoryItem(
      name: "Appliances & Gadgets",
      image: "assets/images/appliances.png",
    ),
    FestiveCategoryItem(
      name: "Home & Living",
      image: "assets/images/home_living.png",
    ),
  ];

  final List<Product> _homeProducts = [
    Product(
      name: "Golden Glass Wooden Lid Candle (Oudh) ",
      imagePath: "assets/images/candle.png",
      price: 79,
    ),
    Product(
      name: "Potato (Aloo)",
      imagePath: "assets/images/gulab_jamun.png",
      price: 89,
    ),
    Product(
      name: "Hybrid Tomato",
      imagePath: "assets/images/bhujiya.png",
      price: 199,
    ),
  ];

  final List<FestiveCategoryItem> _categoryFirstRow = [
    FestiveCategoryItem(
      name: "Vegetables & Fruits",
      image: "assets/images/veg.png",
    ),
    FestiveCategoryItem(
      name: "Atta, Dal & Rice",
      image: "assets/images/atta.png",
    ),
    FestiveCategoryItem(
      name: "Oil, Ghee & Masala",
      image: "assets/images/oil.png",
    ),
    FestiveCategoryItem(
      name: "Dairy, Bread & Milk",
      image: "assets/images/dairy.png",
    ),
    FestiveCategoryItem(
      name: "Biscuits & Bakery",
      image: "assets/images/biscuit.png",
    ),
  ];

  final List<FestiveCategoryItem> _categorySecondRow = [
    FestiveCategoryItem(
      name: "Dry Fruits & Cereals",
      image: "assets/images/dry.png",
    ),
    FestiveCategoryItem(
      name: "Kitchen & Appliances",
      image: "assets/images/kitchen.png",
    ),
    FestiveCategoryItem(name: "Tea & Coffees", image: "assets/images/tea.png"),
    FestiveCategoryItem(
      name: "Ice Creams & much more",
      image: "assets/images/ice.png",
    ),
    FestiveCategoryItem(
      name: "Noodles & Packet Food",
      image: "assets/images/noodles.png",
    ),
  ];

  final List<FestiveCategoryItem> _categoryThirdRow = [
    FestiveCategoryItem(
      name: "Chips & Namkeens",
      image: "assets/images/chips.png",
    ),
    FestiveCategoryItem(
      name: "Sweets & Chocalates",
      image: "assets/images/sweets.png",
    ),
    FestiveCategoryItem(
      name: "Drinks & Juicers",
      image: "assets/images/drinks.png",
    ),
    FestiveCategoryItem(
      name: "Sauces & Spreads",
      image: "assets/images/sauces.png",
    ),
    FestiveCategoryItem(
      name: "Beauty & Cosmetics",
      image: "assets/images/beauty.png",
    ),
  ];

  final List<FestiveCategoryItem> _categoryForthRow = [
    FestiveCategoryItem(
      name: "Detergents",
      image: "assets/images/detergents.png",
    ),
    FestiveCategoryItem(
      name: "Soaps",
      image: "assets/images/soaps.png",
    ),
    FestiveCategoryItem(name: "Perfumes", image: "assets/images/perfumes.png"),
    FestiveCategoryItem(
      name: "Furniture",
      image: "assets/images/furnitures.png",
    ),
    FestiveCategoryItem(
      name: "Hair oil",
      image: "assets/images/hair-oils.png",
    ),
  ];

  List<Product> get getBestSellerItems {
    return [..._bestSellerItems];
  }

  List<FestiveCategoryItem> get getFestiveItems {
    return [..._festiveItems];
  }

  List<Product> get getHomeProducts {
    return [..._homeProducts];
  }

  List<FestiveCategoryItem> get getCategoryFirstRow {
    return [..._categoryFirstRow];
  }

  List<FestiveCategoryItem> get getCategorySecondRow {
    return [..._categorySecondRow];
  }

  List<FestiveCategoryItem> get getCategoryThirdRow {
    return [..._categoryThirdRow];
  }

  List<FestiveCategoryItem> get getCategoryForthRow {
    return [..._categoryForthRow];
  }
}
