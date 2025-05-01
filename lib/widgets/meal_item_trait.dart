import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  final Icon icon;
  final String label;

  const MealItemTrait({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        icon,
        SizedBox(width: 6),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 17)),
      ],
    );
  }
}
