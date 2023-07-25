import 'package:flutter/material.dart';
import 'DrawerDivider.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}
/*============================Le Widget CheckBox===============================*/
// Comme son nom l'indique le Widget CheckBox cree des casse a cocher 

// Pour ce faire il aura besoin d'un tableau contenant les valeur a cocher
// On creera un fonction qui va retourner un Map contenant les valeurs a cocher
// cette fonction va aussi inpecter le chamgement de'etat  

// A retenir une Map est un tableau de cle valeur
/*============================================================================ */

class _MyCheckBoxState extends State<MyCheckBox> {
  Map<String, bool> mycheck = {
    "1": false,
    "2": false,
    "3": false,
    "4": false,
    "5": false,
  };
  // la fonction va retouner une Map en column
  Column checks() {
    // tableau ou sera stocke les valeurs a cocher
    List<Widget> items = [];
    // la Boucle forEach va parcourir la Map est donne les valeur a aficher 
    mycheck.forEach((course, acheter) {
      Widget row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(course),
          Checkbox(
              value: acheter,
              onChanged: ((newValue) {
                setState(() {
                  mycheck[course] = newValue ?? false;
                });
              }))
        ],
      );
      items.add(row);
    });
    return Column(children: items);
  } 

  @override
  Widget build(BuildContext context) {
    Color appBarColor = Color.fromARGB(255, 90, 0, 62);
    return Scaffold(
      drawer: const DrawerDivider(),
      appBar: AppBar(
        title: Center(child: const Text('CheckBox')),
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: checks(),
      ),
    );
  }
}
