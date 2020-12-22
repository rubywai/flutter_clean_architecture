import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/di/injection.dart';
import 'package:flutter_clean_architecture/domain/entity/contact.dart';
import 'package:flutter_clean_architecture/presentation/bloc/get/get_contact_cubit.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetContactCubit>(
      create: getIt(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<GetContactCubit,GetContactState>(
          builder: (context,state){
            if(state is GetContactSuccess) {
              return _contactList(state.contact);
            }
            else if(state is GetContactFailed){
              return Center(child: Text(state.error),);
            }
            else if(state is GetContactConnectionFailed){
              return Center(child: Text('No Internet'),);
            }
            else
              return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
  _contactList(List<Contact> contact) => ListView.builder(
       itemCount: contact.length,
       itemBuilder: (context,position){
         return ListTile(
           title: Text(contact[position].name),
         );
       },
      );
}
