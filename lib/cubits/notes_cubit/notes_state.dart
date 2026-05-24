part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class Notessuccess extends NotesState {}

final class AddNoteFailure extends NotesState {
  final String errormessage;

  AddNoteFailure(this.errormessage);
}
