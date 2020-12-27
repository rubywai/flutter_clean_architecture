import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/di/injection.dart';

import 'features/contact_list/presentation/bloc/get/get_contact_cubit.dart';
import 'features/contact_list/presentation/screen/home.dart';


void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<GetContactCubit>(
          create: (context) => getIt(),
          child: Home()),
    );
  }
}
