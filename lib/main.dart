import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/Edit_Note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNote_Box);
  runApp(const Notes_app());
}

class Notes_app extends StatelessWidget {
  const Notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NotesView.id,
      routes: {
        NotesView.id: (context) => NotesView(),
        EditNoteView.id: (context) => EditNoteView(),
      },
      theme: ThemeData(brightness: Brightness.dark, useMaterial3: false),
    );
  }
}
