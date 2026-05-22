import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_AppBar.dart';
import 'package:notes_app/widgets/Notes/Edit_NoteView_Body.dart';
import 'package:notes_app/widgets/Notes/Notes_Listview.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "EditNote_View";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody());
  }
}
