import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_11/Features/CRUD/Data/DataSource/remote.dart';
import 'package:flutter_application_11/Features/CRUD/Data/Model/productModel.dart';
import 'package:flutter_application_11/Features/CRUD/Domain/productEntity.dart';

part 'crud_state.dart';

class CrudCubit extends Cubit<CrudState> {
Remote remote = RemoteImp();
List<InvoiceDetails> products = [];
  CrudCubit() : super(CrudInitial());

 void addProduct({required Productmodel product})async{
  emit(Loading());
  try{
await remote.addProduct(product: product);
emit(Success());
  }catch(error){
    emit(Fail());
  }
 }


//get data
 void getProducts()async{
  emit(Loading());
  try{
products = await remote.getProduct();
emit(Success());
  }catch(error){
    emit(Fail());
  }
 }





}
