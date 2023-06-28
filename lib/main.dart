import 'package:flutter/material.dart';

import 'views/notes_view.dart';

void main() {
  runApp( const NotaAPP());
}
class NotaAPP extends StatelessWidget {
  const NotaAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'BreeSerif-Regular',
      ),
      home:  NotesView(),
    );
  }
}


