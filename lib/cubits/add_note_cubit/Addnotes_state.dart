part of 'Addnotes_cubit.dart';
@immutable
abstract class AddNotesState {}
class AddNotesInitial extends AddNotesState {}
class AddNotesLoading extends AddNotesState {}
class AddNotesSuccess extends AddNotesState {}
class AddNotesFailure extends AddNotesState {
  final String message;
  AddNotesFailure(this.message);
}