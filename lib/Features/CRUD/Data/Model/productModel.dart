import 'dart:convert';

import 'package:flutter_application_11/Features/CRUD/Data/Model/unitModel.dart';
import 'package:flutter_application_11/Features/CRUD/Domain/productEntity.dart';

class Productmodel extends InvoiceDetails{
  Productmodel({required super.lineno, required super.productname, required super.unitNo, required super.price, required super.quantity, required super.total});



  Productmodel copyWith({
    int? lineno,
    String? productname,
    Unitmodel? unitNo,
    double? price,
    double? quantity,
    double? total,
  }) {
    return Productmodel(
      lineno: lineno ?? this.lineno,
      productname: productname ?? this.productname,
      unitNo: unitNo ?? this.unitNo,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lineno': lineno,
      'productname': productname,
      'unitNo': unitNo.toMap(),
      'price': price,
      'quantity': quantity,
      'total': total,
    };
  }

  factory Productmodel.fromMap(Map<String, dynamic> map) {
    return Productmodel(
      lineno: map['lineno'] as int,
      productname: map['productname'] as String,
      unitNo: Unitmodel.fromMap(map['unitNo'] as Map<String,dynamic>),
      price: map['price'] as double,
      quantity: map['quantity'] as double,
      total: map['total'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Productmodel.fromJson(String source) => Productmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;



}