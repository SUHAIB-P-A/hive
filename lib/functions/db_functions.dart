import 'package:flutter/cupertino.dart';
import 'package:hive_implimentation/model/data_model.dart';

ValueNotifier<List<Student>> studentlistnotifier = ValueNotifier([]);

void addstudentlist(Student value) {
  studentlistnotifier.value.add(value);
  print(value.toString());
  studentlistnotifier.notifyListeners();
}
