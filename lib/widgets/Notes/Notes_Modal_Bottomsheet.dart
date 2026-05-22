import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/Custom_Button.dart';

class ModalBottomsheet extends StatelessWidget {
  const ModalBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      height: 400,
      child: Column(
        children: [
          CustomTextField(text: "Title"),
          SizedBox(height: 16),
          CustomTextField(text: "Content", Maxlines: 5),
          SizedBox(height: 100),
          CustomButton(),
        ],
      ),
    );
  }
}
