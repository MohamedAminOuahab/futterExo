import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFlexPage(),
    );
  }
}

class MyFlexPage extends StatelessWidget {
  const MyFlexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entrainement FlexBox avec flutter'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                child: Row(children: [
                  Expanded(
                      child: Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  )),
                  Expanded(
                      child: Container(
                    color: Color.fromARGB(255, 106, 34, 59),
                  )),
                  Expanded(
                      child: Container(
                    color: Color.fromARGB(255, 255, 0, 132),
                  )),
                ]),
              ),
            ),
            Expanded(
              flex: 80,
              child: Container(
                child: Row(children: [
                  Expanded(
                      flex: 25,
                      child: Container(
                        color: Color.fromARGB(255, 141, 12, 12),
                      )),
                  Expanded(
                      flex: 100,
                      child: Container(
                        color: Color.fromARGB(255, 0, 97, 71),
                        child: const Center(
                            child: Text(
                          'Hello World',
                          style: TextStyle(color: Colors.white),
                        )), 
                      ))
                ]),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Color.fromARGB(255, 76, 0, 95),
              ),
            ),
          ],
        ));
  }
}

/*============================================================================*/
// pour utiliser flexbox avec flutter on aura besoin de Quatre Widgets :

// Expanded : il indique qu'il faut prentre toute l'espace restant grace a la
// la proprieter flex donne le proportiion a donnne 

// Container : c'est le widget qui va contenir le contenu

// Row : il permet l'alignement en ligne
// Column : il permet l'alignement en colonne
// minAxisAlignment : est une proprieter qui permet donner l'alignement 
/*============================================================================*/