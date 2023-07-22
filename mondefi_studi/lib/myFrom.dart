import 'package:flutter/material.dart';

class MyFormulaire extends StatefulWidget {
  const MyFormulaire({Key? key}) : super(key: key);

  initState() => _MyFormulaireState();
  depose() => _MyFormulaireState();

  @override
  State<MyFormulaire> createState() => _MyFormulaireState();
}

class _MyFormulaireState extends State<MyFormulaire> {
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Formulaire',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 2 * size.height / 3,
              color: Color.fromARGB(255, 188, 188, 188),
            ),
            Container(
              height: 1 * size.height / 3,
              color: Colors.green,
            )
          ]),
        ));
  }
}
