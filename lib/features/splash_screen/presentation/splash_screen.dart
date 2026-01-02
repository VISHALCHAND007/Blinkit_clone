import 'dart:async';

import 'package:blinkit_clone/core/helpers/ui_helpers.dart';
import 'package:blinkit_clone/features/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/custom_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.yellow,
      body: Stack(
        children: [
          Center(child: UIHelpers.customImage(imageName: "logo.png")),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: CircularProgressIndicator(
                color: Colors.blueGrey,
                strokeWidth: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
