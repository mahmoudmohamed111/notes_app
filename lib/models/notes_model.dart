import 'package:hive/hive.dart';

part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  @HiveField(0)
  String Note_title;

  @HiveField(1)
  String Note_subtitle;

  @HiveField(2)
  String date;

  @HiveField(3)
  int color;

  NotesModel({
    required this.Note_title,
    required this.Note_subtitle,
    required this.date,
    required this.color,
  });
}
