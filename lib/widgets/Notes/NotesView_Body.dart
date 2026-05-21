import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_AppBar.dart';
import 'package:notes_app/widgets/Notes/Notes_Item.dart';
import 'package:notes_app/widgets/Notes/Notes_Listview.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [SizedBox(height: 50), CustomAppbar(), NotesListview()],
      ),
    );
  }
}
