import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/di/injection.dart';
import 'package:flutter_clean_architecture/domain/entity/contact.dart';
import 'package:flutter_clean_architecture/presentation/bloc/get/get_contact_cubit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetContactCubit>(context).getContact();
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<GetContactCubit,GetContactState>(
        builder: (context,state){
          if(state is GetContactSuccess) {
            _refreshController.refreshCompleted();
            _refreshController.loadComplete();
            return _contactList(state.contact,context);
          }
          else if(state is GetContactFailed){
            return Center(child: Text(state.error),);
          }
          else if(state is GetContactConnectionFailed){
            _refreshController.requestRefresh(needMove: true);
            return Center(child: Text('No Internet'),);
          }
          else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  _contactList(List<Contact> contact,BuildContext context) => SmartRefresher(
    controller: _refreshController,
    header: WaterDropHeader(),
    enablePullUp: true,
    enablePullDown: false,
    onRefresh: _refresh(context),
    onLoading: _onLoading(context),
    child: ListView.builder(
         itemCount: contact.length,
         itemBuilder: (context,position){
           return Card(
             child: ListTile(
               title: Text(contact[position].name),
               subtitle: Text(contact[position].job),
             ),
           );
         },
        ),
  );

  _refresh(BuildContext context){
    print('refresh');

  }
  _onLoading(BuildContext context){
    print('Loading');
  }
}
