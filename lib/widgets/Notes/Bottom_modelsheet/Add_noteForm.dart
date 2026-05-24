import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/Custom_Button.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';

class Add_NoteForm extends StatefulWidget {
  const Add_NoteForm({super.key});

  @override
  State<Add_NoteForm> createState() => _Add_NoteFormState();
}

class _Add_NoteFormState extends State<Add_NoteForm> {
  String? title;
  String? Content;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomTextField(
            text: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            text: "Content",
            Maxlines: 5,
            onSaved: (value) {
              Content = value;
            },
          ),
          SizedBox(height: 100),
          CustomButton(
            onPressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var notemodel = NotesModel(
                  Note_title: title!,
                  Note_subtitle: Content!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNoteCubit>(context).Add_Note(notemodel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
