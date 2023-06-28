import 'package:flutter/material.dart';
import 'NoteItem.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemBuilder: (context , index) {
          return  const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: NoteItem(),
          );
        },
      ),
    );
  }
} // class NotesListView