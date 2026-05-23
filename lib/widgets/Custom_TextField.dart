import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.text,
    this.Maxlines = 1,
    this.onSaved,
  });
  String? text;
  int Maxlines;
  Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Feild is required";
        }
      },
      maxLines: Maxlines,
      decoration: InputDecoration(
        hintText: text,
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(color: kPrimaryColor),
        errorBorder: BuildBorder(color: Colors.red),
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
