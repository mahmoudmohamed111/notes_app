import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart' show Hive;
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NotesModel>? notes;
  Fetech_Notes() {
    var notebox = Hive.box<NotesModel>(kNote_Box);
    notes = notebox.values.toList();
  }
}
