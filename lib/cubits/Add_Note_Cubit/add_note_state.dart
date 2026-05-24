part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

final class AddNoteCubitInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSucces extends AddNoteState {}

final class AddNoteFailure extends AddNoteState {
  final String errormessage;

  AddNoteFailure(this.errormessage);
}
