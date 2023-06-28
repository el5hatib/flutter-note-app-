import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nota/models/note_model.dart';
import 'package:nota/widgests/Constant.dart';
part 'Addnotes_state.dart';
class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
// Define your methods here
addNote (NoteModel noteModel) async {
  emit(AddNotesLoading());
  try {
  var notesbox = Hive.box<NoteModel>(kNotes);
  await notesbox.add(noteModel);
  emit(AddNotesSuccess());
  } catch (e) {
  emit(AddNotesFailure(e.toString()));
  }
}
}