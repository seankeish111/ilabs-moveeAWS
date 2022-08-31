import 'package:flutter/material.dart';
import 'package:intelbis_removalist_platform/screens/enquiryForm.dart';
import 'package:intelbis_removalist_platform/screens/authGate.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Amplified Todo',
      home: authGate(),
      // home: TodosPage(),
    );
  }
}

