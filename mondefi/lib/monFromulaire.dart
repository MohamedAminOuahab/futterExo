import 'package:flutter/material.dart';

class MyFromulaire extends StatefulWidget {
  const MyFromulaire({Key? key}) : super(key: key);

  @override
  State<MyFromulaire> createState() => _MyFromulaireState();
}

class _MyFromulaireState extends State<MyFromulaire> {
  String nom = "";
  String prenom = "";
  late TextEditingController _nomController;

  EntreSaisieNom(String value) {
    setState(() {
      nom = value;
    });
  }

  @override
  void initState() {
    _nomController = TextEditingController();
    _nomController.addListener(SaisiController);

    super.initState();
  }

  void SaisiController() {
    prenom = _nomController.text;
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool sexeValue = true;
  SwitchValue(bool value) {
    setState(() {
      sexeValue = value;
    });
  }
// ===========================================================================

// On crée une map pour stocker une liste de courses.
  Map<String, bool> listeDeCourses = {
    "langage php": false,
    "langage flutter": true,
    "langage": false
  };

// On crée une fonction qui fait une liste de checkBox
  Column checks() {
    List<Widget> items = [];

    listeDeCourses.forEach((course, acheter) {
      Widget row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(course),
          Checkbox(
              value: acheter,
              onChanged: ((newValue) {
                setState(() {
                  listeDeCourses[course] = newValue ?? false;
                });
              }))
        ],
      );
      items.add(row);
    });
    return Column(children: items);
  }
// On crée une fonction « langageEtudie » qui retourne les langages cochés 
// dans la prévisualisation. Elle retourne un widget de type « Column »
  Column langageEtudie() {
    List<Widget> items = [];
    listeDeCourses.forEach((cours, validate) {
      print(validate);
      if (validate == true) {
        Widget row = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(cours)],
        );
        items.add(row);
      }
    });
    return Column(children: items);
  }
// ==========================================================================
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 2 / 3,
            color: Colors.black12,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Nom',
                      hintText: 'Entrez votre nom',
                    ),
                    onChanged: (value) {
                      EntreSaisieNom(value);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                      controller: _nomController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: 'Prenom',
                        hintText: 'Entrez votre Prenom',
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text((sexeValue) ? 'Feminin' : 'Masculin'),
                      Switch(
                        value: sexeValue,
                        onChanged: ((bool) {
                          SwitchValue(bool);
                        }),
                      ),
                    ],
                  ),
                ),
                checks(),
              ],
            ),
          ),
          Container(
            width: size.width,
            height: size.height * 1 / 3,
            color: Colors.green,
            child: Center(
              child: Column(
                children: [
                  Text("Prévisualisation"),
                  Text("Nom : ${nom}"),
                  Text("Prenom : ${prenom}"),
                  Text((sexeValue) ? 'Feminin' : 'Masculin'),
                  langageEtudie(),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
