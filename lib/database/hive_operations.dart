import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'hive_names.dart';

import 'data.dart';

Future<void> openBox() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MedicineAdapter());
  Hive.registerAdapter(NoteAdapter());
  medicineBox = Hive.box<Medicine>(HiveNames.medicine);
  await Hive.openBox<Medicine>(HiveNames.medicine);
  
  await Hive.openBox<Note>(HiveNames.note);
  noteBox = Hive.box<Note>(HiveNames.note);
}