import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_11/Features/CRUD/Presentation/logic/cubit/crud_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
       final bloc = context.watch<CrudCubit>();

    return  Scaffold(body: SafeArea(
      child: bloc.state is Loading ? Center(child: CircularProgressIndicator(),): 
      
    
    ListTile(leading: 
    Text(bloc.products[0].lineno.toString(),style: TextStyle(color: Colors.black),)
    ,title: Text(bloc.products[0].productname.toString(),style: TextStyle(color: Colors.black),)
   , trailing: Text(bloc.products[0].price.toString(),style: TextStyle(color: Colors.black),),
    ),
    ));
  }
}