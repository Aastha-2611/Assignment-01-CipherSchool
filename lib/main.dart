import 'package:demoscreen/pages/home.dart';
import 'package:demoscreen/theme/theme_constraints.dart';
import 'package:demoscreen/theme/theme_manage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
