import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTile;
  @HiveField(2)
  final int date;
  @HiveField(3)
  final int color;

  NoteModel(this.color,
      {required this.title, required this.subTile, required this.date});
}
