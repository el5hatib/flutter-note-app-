import 'package:flutter/material.dart';

import 'Custom_App_Bar.dart';

class NotesViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:[
          const SizedBox(height: 50,),
          CustomAppBar(),

        ],
      ),
    );
  }
} // class NotesViewBody
