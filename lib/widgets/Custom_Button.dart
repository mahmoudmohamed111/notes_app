import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onPressed, this.isloading = false});
  final Function()? onPressed;
  bool isloading;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      onPressed: onPressed,
      child: isloading
          ? Center(child: CircularProgressIndicator())
          : Text("Add", style: TextStyle(color: Colors.black, fontSize: 21)),
    );
  }
}
