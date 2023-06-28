
import 'package:flutter/material.dart';

import '../widgests/EditNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : EditNoteViewBody(),
    );
  }
}