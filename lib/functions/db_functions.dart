import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_implimentation/model/data_model.dart';

ValueNotifier<List<Student>> studentlistnotifier = ValueNotifier([]);

Future<void> addstudentlist(Student value) async {
  final student_db = await Hive.openBox<Student>('studentDB');
  final _id = await student_db.add(value);
  value.id = _id;
  studentlistnotifier.value.add(value);
  //print(value.toString());
  studentlistnotifier.notifyListeners();
}

Future<void> getstudentlist() async {
  final student_db = await Hive.openBox<Student>('studentDB');
  studentlistnotifier.value.clear();
  studentlistnotifier.value.addAll(student_db.values);
  studentlistnotifier.notifyListeners();
}

Future<void> deletestudentlist(int id) async {
  final student_db = await Hive.openBox<Student>('studentDB');
  await student_db.delete(id);
  getstudentlist();
}
