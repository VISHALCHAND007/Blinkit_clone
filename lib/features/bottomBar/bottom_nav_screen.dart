import 'package:blinkit_clone/features/cart/cart_screen.dart';
import 'package:blinkit_clone/features/category/category_screen.dart';
import 'package:blinkit_clone/features/print/print_screen.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/ui_helpers.dart';
import '../home/presentation/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  static final String routeName = "/bottom-nav";

  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var currentIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: .fixed,
        onTap: (ind) {
          setState(() {
            currentIndex = ind;
          });
        },
        items: [
          _navItem(
            image: "home.png",
            label: "Home",
            isSelected: currentIndex == 0,
          ),
          _navItem(
            image: "shopping.png",
            label: "Cart",
            isSelected: currentIndex == 1,
          ),
          _navItem(
            image: "category.png",
            label: "Category",
            isSelected: currentIndex == 2,
          ),
          _navItem(
            image: "printer.png",
            label: "Print",
            isSelected: currentIndex == 3,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _navItem({
    required String image,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      label: label,
      icon: Column(
        mainAxisSize: .min,
        children: [
          AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 300),
            height: 3,
            width: isSelected ? 35 : 0,
            margin: const EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(color: Colors.black54),
          ),
          UIHelpers.customImage(imageName: image),
        ],
      ),
    );
  }
}
