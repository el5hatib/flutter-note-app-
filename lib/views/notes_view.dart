import 'package:flutter/material.dart';
import 'package:nota/widgests/notes_view_body.dart';

import '../widgests/AddNoteBottomSheet.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),
              ),
            ),
            context: context,
            builder: (context) => const AddNoteBottomSheet());
      } ,
        child: const Icon(Icons.add),),
      body: const NotesViewBody() ,
    );
  }
  } // class NotesView

