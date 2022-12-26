import 'package:flutter/cupertino.dart';
import 'package:valuenotifier/db/model/data_model.dart';

ValueNotifier<List<studentmodel>> studentListNotifier = ValueNotifier([]);

void addstudent(studentmodel value) {
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}
