import 'package:hive/hive.dart';

part 'data.g.dart';

@HiveType(typeId: 0)
class Medicine extends HiveObject{

  @HiveField(0)
  String name;

  Medicine({this.name});
}

@HiveType(typeId: 1)
class Note extends HiveObject{

  @HiveField(0)
  String title;

  @HiveField(1)
  String content;

  Note({this.title, this.content});
}

Box<Medicine> medicineBox;
Box<Note> noteBox;