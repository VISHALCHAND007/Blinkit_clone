import 'package:blinkit_clone/core/helpers/ui_helpers.dart';
import 'package:blinkit_clone/core/widgets/spacer.dart';
import 'package:blinkit_clone/features/bottomBar/bottom_nav_screen.dart';
import 'package:blinkit_clone/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static final routeName = "/login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void login() {
      Navigator.of(context).pushNamed(BottomNavScreen.routeName);
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Image.asset(
              "assets/images/onboarding.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // UIHelpers.customImage(imageName: "onboarding.png"),
            UIHelpers.customImage(imageName: "app_icon.png"),
            Text(
              "India's last minute app",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            DefSpacer(),
            Card(
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: .stretch,
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Vishal",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "8956XXXXXX",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    DefSpacer(),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                      onPressed: login,
                      child: Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .baseline,
                        textBaseline: .alphabetic,
                        children: [
                          Text(
                            "Login with ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "zomato",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    DefSpacer(value: 6),
                    Text(
                      "Access your saved address from zomato automatically!",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                      textAlign: .center,
                    ),
                    DefSpacer(value: 25),

                    Text(
                      "or login with phone number",
                      style: TextStyle(fontSize: 14, color: Colors.green),
                      textAlign: .center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
