import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Simple_Bloc_Observer.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/Add_Note_Cubit/add_note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/Edit_Note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NotesModelAdapter());

  await Hive.initFlutter();
  await Hive.openBox<NotesModel>(kNote_Box);

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
