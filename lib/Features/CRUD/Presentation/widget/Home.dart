import 'package:flutter/material.dart';
import 'package:flutter_application_11/Features/CRUD/Data/Model/productModel.dart';
import 'package:flutter_application_11/Features/CRUD/Data/Model/unitModel.dart';
import 'package:flutter_application_11/Features/CRUD/Presentation/logic/cubit/crud_cubit.dart';
import 'package:flutter_application_11/Features/CRUD/Presentation/widget/invoiceDetails.dart';
import 'package:flutter_application_11/Features/CRUD/Presentation/widget/invoiceList.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @overridegit 
  Widget build(BuildContext context) {
   final bloc = context.watch<CrudCubit>();
    return Scaffold(appBar: AppBar(title: Text('Home'),),body: ListView(children: [
     ElevatedButton(onPressed: (){

    bloc.addProduct(product: Productmodel(lineno: 4, productname: 'productname', unitNo: Unitmodel(unitNo: 1, unitName: 'unitName'), price: 11, quantity: 1, total: 100));

     }, child: Text('HomePage')),
     ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Lists() ));
     }, child: Text('Invoice List')),
     ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Details() ));


     }, child: Text('Invoice Details')),


    ],),);
  }
}