import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubits/add_note_cubit/Addnotes_cubit.dart';
import 'package:nota/models/note_model.dart';
import 'package:nota/widgests/Constant.dart';
import 'views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()  async {
  await Hive.initFlutter(); // Initialize Hive
 await Hive.openBox(kNotes); // Open box with name Notes
  Hive.registerAdapter(NoteModelAdapter()); // Register Adapter for NoteModel
  runApp( const NotaAPP());
}
class NotaAPP extends StatelessWidget {
  const NotaAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Define your cubits here
        BlocProvider(create: (context) => AddNotesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'BreeSerif-Regular',
        ),
        home:  NotesView(),
      ),
    );
  }
}


