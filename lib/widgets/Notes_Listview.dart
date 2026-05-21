import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Notes_Item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemCount: 10,
        itemBuilder: (context, index) {
          return Note_Item(NoteColor: Colors.orangeAccent);
        },
      ),
    );
  }
}
