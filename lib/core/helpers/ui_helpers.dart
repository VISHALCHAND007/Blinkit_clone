import 'package:flutter/widgets.dart';

class UIHelpers {
  static Image customImage({required String imageName}) {
    return Image.asset("assets/images/$imageName");
  }

  static Text customTitle({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      textAlign: .start,
    );
  }
}