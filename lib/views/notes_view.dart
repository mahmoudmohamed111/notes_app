import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/NotesView_Body.dart';

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
            context: context,
            builder: (context) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                height: 450,
                child: Column(
                  children: [
                    CustomTextField(text: "Title"),
                    SizedBox(height: 16),
                    CustomTextField(
                      text: "Content",
                      Textfield_Padding: EdgeInsets.symmetric(
                        vertical: 60,
                        horizontal: 10,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: NotesviewBody(),
    );
  }
}
