import 'package:flutter/material.dart';

import 'views/notes_view.dart';

void main() {
  runApp( NotaAPP());
}
class NotaAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: NotesView(),
    );
  }
}


