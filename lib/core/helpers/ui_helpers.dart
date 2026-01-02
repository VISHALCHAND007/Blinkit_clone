import 'package:flutter/widgets.dart';

class UIHelpers {
  static Image customImage({required String imageName}) {
    return Image.asset("assets/images/$imageName");
  }
}