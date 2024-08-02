import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_11/Features/CRUD/Data/Model/productModel.dart';
import 'package:flutter_application_11/Features/CRUD/Domain/productEntity.dart';

sealed class Remote {
Future<void> addProduct({required Productmodel product});
Future<List<Productmodel>>getProduct();
Future<void> deleteProduct({required int id});
Future<void> updateProduct({required Productmodel product});

}
class RemoteImp extends Remote{
  final firestore = FirebaseFirestore.instance.collection('Interview');
  @override
  Future<void> addProduct({required Productmodel product}) async{
   try{
    await firestore.doc(product.lineno.toString()).set(product.toMap());
    
   }catch(error){
    throw Exception();
   }
  }
  
  @override
  Future<void> deleteProduct({required int id}) async{
    
     await firestore.doc(id.toString()).delete();

  }
  
  @override
  Future<List<Productmodel>> getProduct() async{
  
      final data =   await firestore.get();
final res = data.docs.map((elemet)=>Productmodel.fromMap(elemet.data()) ) .toList();
 return res;
  }
  
  @override
  Future<void> updateProduct({required Productmodel product})async {
       await firestore.doc(product.lineno.toString()).set(product.toMap());

  }

}