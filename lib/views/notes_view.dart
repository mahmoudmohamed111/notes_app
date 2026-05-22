import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/Notes/Notes_Modal_Bottomsheet.dart';
import 'package:notes_app/widgets/Notes/NotesView_Body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,

        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(24),
            ),
            context: context,
            builder: (context) {
              return ModalBottomsheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: NotesviewBody(),
    );
  }
}
