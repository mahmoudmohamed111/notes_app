import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/Notes/Custom_Button.dart';

class ModalBottomsheet extends StatelessWidget {
  const ModalBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      height: 450,
      child: Column(
        children: [
          CustomTextField(text: "Title"),
          SizedBox(height: 16),
          CustomTextField(
            text: "Content",
            Textfield_Padding: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 10,
            ),
          ),
          Spacer(),
          CustomButton(),
        ],
      ),
    );
  }
}
