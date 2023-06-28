import 'package:flutter/material.dart';
import 'Custom_App_Bar.dart';
import 'NotesListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:const [
          SizedBox(height: 50,),
          CustomAppBar(),
          SizedBox(height: 25,),
          Expanded(child: NotesListView()),

        ],
      ),
    );
  }
} // class NotesViewBody
