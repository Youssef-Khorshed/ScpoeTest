import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_11/Features/CRUD/Presentation/logic/cubit/crud_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
       final bloc = context.watch<CrudCubit>();

    return  Scaffold(body: SafeArea(child: bloc.state is Loading ? Center(child: CircularProgressIndicator(),): ListView.builder(itemBuilder: (context, index)=> ListTile(leading: 
    Text(bloc.products[index].lineno.toString(),style: TextStyle(color: Colors.black),)
    ,title: Text(bloc.products[index].productname.toString(),style: TextStyle(color: Colors.black),)
   , trailing: Text(bloc.products[index].price.toString(),style: TextStyle(color: Colors.black),),
    ),
    
    itemCount: bloc.products.length,)),);
  }
}