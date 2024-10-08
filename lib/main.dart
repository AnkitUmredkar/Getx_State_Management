import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/CRUD%20Operation%20_Employee/View/showEmpData.dart';
import 'Counter App/View/counterAddPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const ShowEmpData(),
    );
  }
}
