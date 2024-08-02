// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:flutter_application_11/Features/CRUD/Data/Model/unitModel.dart';

class InvoiceDetails extends Equatable {


int lineno;
String productname;
Unitmodel unitNo;
double price;
double quantity;
double total;
   InvoiceDetails({
    required this.lineno,
    required this.productname,
    required this.unitNo,
    required this.price,
    required this.quantity,
    required this.total,
  });

  @override
  List<Object> get props {
    return [
      lineno,
      productname,
      unitNo,
      price,
      quantity,
      total,
    ];
  }
}
