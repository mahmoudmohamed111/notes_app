import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class Note_Item extends StatelessWidget {
  Note_Item({super.key, required this.NoteColor});
  Color NoteColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 8),
      decoration: BoxDecoration(
        color: NoteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Flutter tips",
                style: TextStyle(
                  fontWeight: kFontweight,
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Build Your Career With Tharwat Samy",
                style: TextStyle(
                  fontWeight: kFontweight,
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "May 21,2022",
              style: TextStyle(
                fontWeight: kFontweight,
                fontSize: 16,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
