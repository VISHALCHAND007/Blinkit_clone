import 'package:blinkit_clone/core/constants/custom_colors.dart';
import 'package:blinkit_clone/core/widgets/custom_app_bar.dart';
import 'package:blinkit_clone/core/widgets/spacer.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          DefSpacer(value: 35),
          Text(
            "Print Store",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          DefSpacer(value: 2),
          Text(
            "Blinkit ensures secure prints at every stage",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          DefSpacer(value: 40),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffededed),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              // crossAxisAlignment: .start,
              children: [
                Column(
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Documents",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: .start,
                    ),
                    DefSpacer(),
                    documentItem("Price starting at ₹ 3/page"),
                    documentItem("Paper quality: 70 GSM"),
                    documentItem("Signle side prints"),
                    DefSpacer(value: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text("Upload Files"),
                    ),
                  ],
                ),
                Image.asset("assets/images/pages.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row documentItem(String text) {
    return Row(
      mainAxisAlignment: .start,
      children: [Image.asset("assets/images/mark_icon.png"), Text("  $text")],
    );
  }
}
