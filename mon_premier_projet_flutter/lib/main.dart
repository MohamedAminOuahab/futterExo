import 'package:flutter/material.dart';
// pour pouvoir utiliser une image svg il faudra importer un package
import 'page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // le home va definir la page d'accueil de l'application
      // Scaffold permet de gérer le squellet de l'application
      home: HomePage(),
    );
  }
}
