import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/di/injection.dart';
import 'package:flutter_clean_architecture/presentation/screen/home.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
