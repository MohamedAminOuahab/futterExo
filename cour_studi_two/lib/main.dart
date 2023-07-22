import 'package:flutter/material.dart';
// ignore: unused_import
import './carte_page.dart';
// ignore: unused_import
import 'MonInteractifPage.dart';
import 'checkBoxe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Carte de vistite',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const MyCheckBox());
  }
}
