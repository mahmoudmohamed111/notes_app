import 'package:flutter/material.dart';

class Custom_Icon extends StatelessWidget {
  Custom_Icon({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: icon),
    );
  }
}
