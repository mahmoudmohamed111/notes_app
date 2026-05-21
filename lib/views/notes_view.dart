import 'package:flutter/material.dart';
import 'package:notes_app/widgets/NotesView_Body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,

        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: NotesviewBody(),
    );
  }
}
