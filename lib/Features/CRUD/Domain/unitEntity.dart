// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Unitentity extends Equatable {
  int unitNo;
  String unitName;
   Unitentity({
    required this.unitNo,
    required this.unitName,
  });





  @override
  List<Object> get props => [unitNo, unitName];

}
