part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteLoading extends AddNoteCubitState {}

final class AddNoteSucces extends AddNoteCubitState {}

final class AddNoteFailure extends AddNoteCubitState {
  final String errormessage;

  AddNoteFailure(this.errormessage);
}
