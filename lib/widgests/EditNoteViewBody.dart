import 'package:flutter/material.dart';

import 'Custom_App_Bar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:const [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note', icon: Icons.check,), 
          

        ],
    ),
      
    );
  }
}