import 'package:flutter/material.dart';
import 'package:nota/widgests/notes_view_body.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {} , child: const Icon(Icons.add),),
      body: const NotesViewBody() ,
    );
  }
  } // class NotesView

