import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Search.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 26)),
        Spacer(),
        CustomSearch(),
      ],
    );
  }
}
