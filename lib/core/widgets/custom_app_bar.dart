import 'package:blinkit_clone/core/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Color backgroundColor;

  const CustomAppBar({
    this.backgroundColor = CustomColors.lightYellow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fontColor = backgroundColor == CustomColors.lightYellow
        ? Colors.black
        : Colors.white;

    return Container(
      width: double.infinity,
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Text(
            "Blinkit in",
            style: TextStyle(
              color: fontColor,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            textAlign: .left,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .stretch,
                  children: [
                    Text(
                      "16 minutes",
                      style: TextStyle(
                        color: fontColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: .start,
                    ),
                    Row(
                      children: [
                        Text(
                          "HOME -",
                          style: TextStyle(
                            color: fontColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Devla malla, Kheda chauraha Kathgodam",
                          style: TextStyle(color: fontColor, fontSize: 12),
                        ),
                        Icon(Icons.keyboard_arrow_down, color: fontColor),
                      ],
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: backgroundColor == CustomColors.lightYellow
                    ? Colors.white
                    : Colors.black,
                child: Icon(Icons.person, color: fontColor),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.black54),
                SizedBox(width: 5),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hint: Text(
                        "Search \"ice-cream\"",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Container(width: 1, color: Colors.grey, height: 20),
                SizedBox(width: 5),
                Icon(Icons.mic),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
