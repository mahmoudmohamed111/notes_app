import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Notes/Notes_Item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Note_Item(
                NoteColor: index.isEven ? Colors.blue : Colors.orange,
              ),
            );
          },
        ),
      ),
    );
  }
}
