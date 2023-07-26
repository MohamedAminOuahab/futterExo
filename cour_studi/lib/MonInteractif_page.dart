import 'package:flutter/material.dart';

/*
  SatefulWidget va ecoute l'etat de ces variables et les mettre a jour lorsque 
  l'etat de ces variables change.
*/

class MyFromPage extends StatefulWidget {
  const MyFromPage({Key? key}) : super(key: key);

// Pour que le Widget puisse mettre a jour l'etat de ces variables lorsque
// il faut surcharger la fonction creteState qui retourner _MyFromPageState().
  @override
  State<MyFromPage> createState() => _MyFromPageState();
}

class _MyFromPageState extends State<MyFromPage> {
/*
  deux fontion sont necessees pour mettre a jour l'etat de ces variables.
  1. initState() = sura appler a l'initialisation du widget.
  2. dispose() = sera appeler lorsque le widget sera supprimé.
*/
  dynamic appBarColor = Colors.green;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(_montreLeTextSaisie);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  dynamic nom = "";
  void _montreLeTextSaisie() {
    setState(() {
      nom = controller.text;
    });
  }

  changerCouler() {
    setState(() {
      appBarColor = (appBarColor == Colors.green) ? Colors.blue : Colors.green;
    });
  }

  String changerAppText() {
    return (textButtonPressed) ? "je suis inactif" : "Mon Interactif";
  }

  bool textButtonPressed = false;
  // ignore: non_constant_identifier_names
  MettreAJourAppBar() {
    setState(() {
      textButtonPressed = !textButtonPressed;
    });
  }

  String prenom = "";

  SaisiEntre(String saisie) {
    print(saisie);
    setState(() {
      prenom = saisie;
    });
  }

  // constuction d'un controller de type TextEditingController
  late TextEditingController controller;

  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            TextButton(
                onPressed: () {
                  MettreAJourAppBar();
                },
                child: Text(changerAppText())),
          ],
        ),
        backgroundColor: appBarColor,
      ),
      body: Center(
          child: Column(
        children: [
          const Text('From Page'),
          ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print("Salut");
            },
            onLongPress: () {
              // ignore: avoid_print
              print("appui loooooong");
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 20,
                shadowColor: Colors.red),
            child: const Text("Elevated"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  hintText: "Entrez votre prénom",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              keyboardType: TextInputType.emailAddress,
              onChanged: (newString) {
                SaisiEntre(newString);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  hintText: "Entrez votre nom",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              controller: controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Switch(
                    value: switchValue,
                    activeColor: Colors.green,
                    onChanged: (bool) {
                      setState(() {
                        switchValue = bool;
                      });
                    }),
                Text((switchValue) ? "IOS" : "ANDROID"),
              ],
            ),
          ),
          Text("votre nom est : $nom"),
          Text("Votre prenom est : $prenom"),
        ],
      )),
      // button de pied page sera mis au centre de la page.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            MettreAJourAppBar();
            changerCouler();
          },
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}
