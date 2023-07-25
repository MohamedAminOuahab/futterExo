import 'package:flutter/material.dart';

class MyFromPage extends StatefulWidget {
  const MyFromPage({super.key});

  @override
  State<MyFromPage> createState() => _MyFromPageState();
}

class _MyFromPageState extends State<MyFromPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String saisiValue = "";
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Mon formulaire'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 2 / 3,
              color: Colors.grey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text('nom'),
                        hintText: 'Votre nom s\' il vous plais',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onChanged: (valueEnter) {
                        setState(() {
                          saisiValue = valueEnter;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: const Text('Prenom'),
                          hintText: 'Votre pernom s\' il vous plais',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 2 / 3,
              color: Colors.green,
              child: Center(
                child: Column(children: [
                  Text(saisiValue),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
