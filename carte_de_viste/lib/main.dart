import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carte de viste',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyCarte(),
    );
  }
}

class MyCarte extends StatelessWidget {
  const MyCarte({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Ma carte de viste')),
        body: Center(
          child: Card(
            child: Container(
                width: 300,
                height: 150,
                color: const Color.fromARGB(255, 190, 219, 233),
                child: Column(children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                          child: const Center(
                              child: Text(
                        'Developppeur full-Stack',
                        style: TextStyle(color: Colors.black),
                      )))),
                  Expanded(
                      flex: 6,
                      child: Container(
                          child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/raw.jpg",
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('OUAHAB Mohamed'),
                          ),
                        ],
                      ))),
                  Expanded(
                      flex: 2,
                      child: Container(
                        alignment: AlignmentDirectional.centerStart,
                        child: const Padding(
                          padding: EdgeInsets.all(3),
                          child: Text('Mohamed.ouahab1999@gamil.com'),
                        ),
                      ))
                ])),
            elevation: 9,
          ),
        ));
  }
}
