import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(const Notes_app());
}

class Notes_app extends StatelessWidget {
  const Notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: NotesView.id,
      routes: {NotesView.id: (context) => NotesView()},
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
