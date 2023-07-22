import 'package:flutter/material.dart';

class DrawerDivider extends StatelessWidget {
  const DrawerDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: SingleChildScrollView(
            child: Column(
      children: [
        DrawerHeader(child: Center(child: Text('menu de navigation'))),
        Text("Onglet 1"),
        Divider(
          color: Color.fromARGB(255, 0, 255, 183),
          indent: 10,
          endIndent: 10,
          thickness: 2,
        ),
        Text("Onglet 2"),
        Divider(
          color: Color.fromARGB(255, 0, 255, 183),
          indent: 10,
          endIndent: 10,
          thickness: 2,
        ),
        Text("Onglet 3"),
      ],
    )));
  }
}

// SingleChildScrollView() va permettre de scroll si il un overflow
// Divider() va permettre de mettre unz ligne entre deux widgets