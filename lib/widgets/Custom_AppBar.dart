import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Search.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes", style: TextStyle(fontSize: 26)),
        Spacer(),
        CustomSearch(),
      ],
    );
  }
}
