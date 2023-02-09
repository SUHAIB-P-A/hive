import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_implimentation/model/data_model.dart';

ValueNotifier<List<Student>> studentlistnotifier = ValueNotifier([]);
Future<void> addstudentlist(Student value) async {
  final student_db = await Hive.openBox<Student>('studentDB');
  final id = await student_db.add(value);
  value.id = id;
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
  await student_db.deleteAt(id);
  getstudentlist();
}

Future<void> updatelist(int index,Student value) async {
  final student_db = await Hive.openBox<Student>('studentDB');
  // var id = value.id;
  // var index = student_db.getAt(id);
  await student_db.put(index, value);
  //studentlistnotifier.notifyListeners();
  getstudentlist();
}
