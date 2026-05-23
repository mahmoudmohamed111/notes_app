import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/Custom_Button.dart';

class ModalBottomsheet extends StatelessWidget {
  const ModalBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      height: 400,
      child: SingleChildScrollView(child: Add_NoteForm()),
    );
  }
}

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
