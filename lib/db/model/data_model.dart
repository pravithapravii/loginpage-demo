import 'package:hive_flutter/hive_flutter.dart';
part 'data_model.g.dart';

@HiveType(typeId: 0)
class studentmodel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String age;

  studentmodel({required this.name, required this.age});
}
