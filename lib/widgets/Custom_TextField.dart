import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.text, this.Maxlines = 1});
  String? text;
  int Maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: Maxlines,
      decoration: InputDecoration(
        hintText: text,
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
