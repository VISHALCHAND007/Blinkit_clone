import 'package:flutter/material.dart';

class DefSpacer extends StatelessWidget {
  final double value;

  const DefSpacer({this.value = 10, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value);
  }
}
