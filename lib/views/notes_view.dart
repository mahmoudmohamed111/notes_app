import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_widget/Custom_TextField.dart';
import 'package:notes_app/widgets/Notes/Bottom_modelsheet/Notes_Modal_Bottomsheet.dart';
import 'package:notes_app/widgets/Notes/Notes_Body/NotesView_Body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,

          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
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
      ),
    );
  }
}
