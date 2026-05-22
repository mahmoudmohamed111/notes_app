import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Icon.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key, required this.text, required this.icon});
  String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 26)),
        Spacer(),
        Custom_Icon(icon: icon),
      ],
    );
  }
}
