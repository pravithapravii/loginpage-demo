// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class studentmodelAdapter extends TypeAdapter<studentmodel> {
  @override
  final int typeId = 0;

  @override
  studentmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return studentmodel(
      name: fields[0] as String,
      age: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, studentmodel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is studentmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
