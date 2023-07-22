import 'package:flutter/material.dart';
import 'DrawerDivider.dart';
/*=========================================================================== */
// Le widget StatefulWidget va permettre de creer de page dynamiquement, pour
// cela il va ecouter l'etat de ces variables et les mettre a jour.

// Pour gerer le state il nous faudra deux fonctions :

// 1. void initState() : tout ce qui va se faire quand on initialise du widget
// 2. void dispose() : tout ce qui va se faire quand la widget sera supprimee
/*=========================================================================== */

class MonInteractifPage extends StatefulWidget {
  const MonInteractifPage({super.key});

  initState() => _MonInteractifPageState();
  dispose() => _MonInteractifPageState();
  @override
  State<MonInteractifPage> createState() => _MonInteractifPageState();
}

/*=========================================================================== */
// Le widget StatefulWidget pour gerer l'etat est la mise a jour on aura besoin
// de creer une Class quand appellera avec le suffix State.
/*=========================================================================== */
class _MonInteractifPageState extends State<MonInteractifPage> {
  dynamic appBarColor = const Color.fromARGB(255, 64, 0, 121);
  // switchValue va servir a la mise a jour du Widget Switch
  bool switchValue = true;

  bool textButtonPressed = false;
  // Declaration de la variable de saisi
  String prenom = "";
  // la variable controler sera initialiser plus tard
  // TextEditingController va permettre de gérer la saisie de la saisie
  late TextEditingController controller;

  dynamic sliderValue = 0;

  String changerAppText() {
    return (textButtonPressed) ? "I dont no online" : "I am online";
  }

  void _montrerLeTexteSaisie() {
    setState(() {
      prenom = controller.text;
    });
  }

  // Cette fonction va permtter d'initialiser la saisie de la saisie
  // elle aura besoin de l'aide function _montrerLeTexteSaisie() qui va
  // permettre d'indique le changement d'etat de la saisie
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
    controller.addListener(_montrerLeTexteSaisie);
  }

  // Cette fonction va permetter de librer la memoir une foi fini
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // mise a jour de TextButton
  MettreAJourAppBar() {
    setState(() {
      textButtonPressed = !textButtonPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerDivider(),
      appBar: AppBar(
        title: const Text('StateFull'),
        backgroundColor: appBarColor,
      ),
      body: Center(
          child: Column(
        children: [
/*=========================================================================== */
// le widget TextField() va perettre de creer un champ de saisi de texte

// il aura les proprietes suivantes :

// obscureText : permet de masquer le contenu du champ de saisie

// decoration : pour le style du chomp de saisie il sera associer a
// InputDecoration aura deux paramettres :
// border : permet de mettre un bordure sur le champ de saisie
// hintText : permet de mettre un texte par defaut sur le champ de saisie

// KeyboardType : permet de mettre un type de clavier sur le champ de sais

// onChanged : permet de mettre a jour le contenu du champ de saisie en meme
// temp que la valeur change

// onSubmit: valide la saisie du champ quand on appui sur le bouton
/*=========================================================================== */
          TextField(
/*============================================================================ */
// onChanged permet de rcuperer la valeur en temp reel cependent il existe une
// autre methode qui permet de faire cela.
//
// On va mettre en place un controlle qui fonction avec un patrene d'oservation
/*=============================================================================*/
            controller: controller,
            decoration: InputDecoration(hintText: "Entrez votre prenom"),
          ),
          Text(prenom),

          TextButton(
              onPressed: MettreAJourAppBar(), child: Text(changerAppText())),
/*=========================================================================== */
// TextButton va ce mettre a jour quand on clique sur le bouton
// ElevatedButton fait la meme chose que le TextButton cependant il mais
// en place un effet visuels
/*=========================================================================== */
          ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print("Salut");
            },
            onLongPress: () {
              print("appui loooooong");
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 5,
                shadowColor: Colors.red),
            child: const Text("Elevated"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text((switchValue) ? "iOS" : "Android"),
                Switch(
                    value: switchValue,
                    onChanged: (bool) {
                      setState(() {
                        switchValue = bool;
                      });
                    })
              ],
            ),
          ),
/*==============================================================================*/
// Slider est widget va permettre de creer un widget de barre de progression

// il aura les proprietes suivantes :
// value : permet de mettre a jour la valeur de la barre de progression
// onChanged : permet de mettre a jour la valeur de la barre de progression
// min : permet de mettre a jour la valeur minimale de la barre de progression
// max : permet de mettre a jour la valeur maximale de la barre de progression
// divisions : permet de mettre a jour le nombre de divisions de la barre
// activeColor : permet de mettre a jour la couleur de la barre de progression
// inactiveColor : permet de mettre a jour la couleur de la barre de progression

/*=============================================================================*/
          Slider(
              max: 100,
              min: 0,
              value: sliderValue,
              onChanged: ((value) {
                setState(() {
                  sliderValue = value;
                });
              })),
              // toInt() transforme la valeur en int
          Text("${sliderValue.toInt()}"),
        ],
      )),
/*=========================================================================== */
// C'est un boutons de pied de page qui prend deux parramettre .

// les premier paramttre sera une collback qui ce conduira comme un event
// dans javaScript.

// Chaque modification de l'etat appelle par la collback sera notifier avec
// setSatate(collBack de modification) .

// le deuxemme paramttre sera le contenu du bouton.
/*=========================================================================== */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
/*=========================================================================== */
// Le widget FloattingActionButton va permettre de creer un bouton de pied page

// il aura les proprietes suivantes :

// 1. onPressed : la fonction appelle quand on appui sur le bouton
// 2. child : le contenu du bouton
/*=========================================================================== */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            appBarColor = (const Color.fromARGB(255, 64, 0, 121) != appBarColor)
                ? const Color.fromARGB(255, 64, 0, 121)
                : Color.fromARGB(255, 174, 0, 255);
          });
        },
        child: const Icon(Icons.build),
      ),
    );
  }
}
