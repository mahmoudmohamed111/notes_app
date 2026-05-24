import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/Edit_Note_view.dart';

class Note_Item extends StatelessWidget {
  NotesModel notesModel;
  Note_Item({super.key, required this.NoteColor, required this.notesModel});
  Color NoteColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(EditNoteView.id);
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 8),
        decoration: BoxDecoration(
          color: NoteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  notesModel.Note_title,
                  style: TextStyle(
                    fontWeight: kFontweight,
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  notesModel.Note_subtitle,
                  style: TextStyle(
                    fontWeight: kFontweight,
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                DateFormat(
                  "MMM d, yyyy",
                ).format(DateTime.parse(notesModel.date)),
                style: TextStyle(
                  fontWeight: kFontweight,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
