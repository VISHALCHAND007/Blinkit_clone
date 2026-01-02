import 'package:blinkit_clone/core/constants/custom_colors.dart';
import 'package:blinkit_clone/features/bottomBar/bottom_nav_screen.dart';
import 'package:blinkit_clone/features/login/presentation/login_screen.dart';
import 'package:blinkit_clone/features/splash_screen/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blinkit",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "poppins",
        colorScheme: .fromSeed(seedColor: CustomColors.yellow),
        scaffoldBackgroundColor: Colors.white,
        cardTheme: CardThemeData(color: Colors.white),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: CustomColors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      routes: {
        "/": (ctx) => SplashScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        BottomNavScreen.routeName: (ctx) => BottomNavScreen(),
      },
    );
  }
}
