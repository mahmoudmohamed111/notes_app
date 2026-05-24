import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/Custom_Button.dart';
import 'package:notes_app/widgets/Notes/Bottom_modelsheet/Add_noteForm.dart';

class ModalBottomsheet extends StatelessWidget {
  const ModalBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      height: 400,
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSucces) {
            Navigator.of(context).pop();
          }
          if (state is AddNoteFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Failed try to add note again")),
            );
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: SingleChildScrollView(child: Add_NoteForm()),
          );
        },
      ),
    );
  }
}
