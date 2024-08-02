import 'dart:convert';

import 'package:flutter_application_11/Features/CRUD/Domain/unitEntity.dart';

class Unitmodel extends Unitentity{
  Unitmodel({required super.unitNo, required super.unitName});


  Unitmodel copyWith({
    int? unitNo,
    String? unitName,
  }) {
    return Unitmodel(
      unitNo: unitNo ?? this.unitNo,
      unitName: unitName ?? this.unitName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unitNo': unitNo,
      'unitName': unitName,
    };
  }

  factory Unitmodel.fromMap(Map<String, dynamic> map) {
    return Unitmodel(
      unitNo: map['unitNo'] as int,
      unitName: map['unitName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Unitmodel.fromJson(String source) => Unitmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;



}