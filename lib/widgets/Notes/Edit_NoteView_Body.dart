import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_AppBar.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/Notes/Notes_Listview.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(text: "Edit Note", icon: Icon(Icons.done)),
          SizedBox(height: 24),
          CustomTextField(text: "Title"),
          SizedBox(height: 16),
          CustomTextField(text: "Context", Maxlines: 5),
        ],
      ),
    );
  }
}
