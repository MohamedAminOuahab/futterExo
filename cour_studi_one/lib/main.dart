import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*
  la fonction de main() est le point d'entrée du programme ,
  elle va permettre de d'organniser l'excution du programme
 */
void main() {
  runApp(const MyApp());
}
/*====================Introduction Flutter =================================== */
// Flutter repose sur des widgets qui sont des composant
// plus ou moins complexes qui affichent des informations a  l'ecran.

// La widget sont des class permettant de construire de interface utilisateur
// elle sont inspirer de React.js

// le widget vont construre des interfaces utilisateur  complexes a l'aide autre
// widget qui meme contient des proprietes et des methodes.
/*============================================================================ */

/*=====================Presantation du Widget ==================== */
// Un widget est representé sous formme d'un arabe c'est a dire qu'il peut contenir
// plussieur widget qui seront de branche est chaque branche peuvent contenir eux
// autaure branche.
/*============================================================================ */

/*=====================Presantation du Widget MaterialApp ==================== */
// L'application retourne un widget MaterialApp il contient les proprietes
// suivantes :

// - Title : le titre de l'application
// - Theme : le thème de l'application
// - Home : la page d'accueil de l'application
/*============================================================================ */

/*=====================Presantation du Widget StateLessWidget ================ */
// Les widgets StateLessWidget sont des widgets qui vont creer de composant satique

// Pour definr un widget StateLessWidget il faut appeler sont constructeur
// appartir du mont cle class.

// Grace a la propriete child on pour definir un widget imbrique dans un widget
/*============================================================================ */
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BasicsPage() // appel du widget créé dessous
        );
  }
}
/*=====================Presantation du Widget StateLessWidget ================ */
// Le widget Scaffold est le squelette de l'application, il est present dans la
// plus par des application , a l'intérieur on peut trouver :

// - appBar : un barre de navigation
// - body : le contenu de l'application
// - floatingButtonAction : un button en bas
// - Drawer : un barre de navigation sur le cote
/*============================================================================ */
class BasicsPage extends StatelessWidget {
  const BasicsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(
            child: Column(
          children: [
            DrawerHeader(child: Text('menu de navigation')),
            Text("Onglet 1"),
            Text("Onglet 2"),
            Text("Onglet 3"),
          ],
        )),
        appBar: AppBar(
          title: const Center(child: Text('Le titre de l\'application')),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            simpleText('Gotham City'),
            Image.asset(
              'assets/images/gotham_city.jpg',
            ),
          ],
        )));
  }
}
/*=====================Presantation du Widget Text =========================== */
// Le widget Text est un widget de base de l'application, il peut contenir des
// chaine de caractere mais il peut aussi styliser cette chaine via la propriété
// style qui aura le widget TextStyle(propriete de style).

// Creer une fonction pour la configuration de la style de la chaine de caractere
// va permettre deviter de le refaire a chaque fois
/*============================================================================ */
Text simpleText(String text) {
  return Text(
    text,
    style: const TextStyle(
        fontSize: 42,
        fontFamily: 'NightmarePills-BV2w',
        color: Color.fromARGB(255, 0, 44, 40)),
    textAlign: TextAlign.center,
  );
}
/*=====================Presantation du Widget Icon =========================== */
// Le widget Icon va permettre d'afficher des icônes dans l'application , on 
// pourra des propriétés comme la taille de la icône 

/*============================================================================ */

/*=====================Presantation du Widget Image =========================== */
// Le widget Image va permettre d'afficher des image en local dans l'application pour on 
// procede par etape : 

// 1. Créer un dossier image dans le dossier assets
// 2. aller dans le fichier pubspec.yaml a la section images
// 3. introdure le chemin relative du fichier image dans le dossier assets
// 4. mettre le chemin de l'image dans le widget Image.asset(chemin)

// il possibel d'afficher de image qui vient d'internet avec Image.network(chemin) 

/*============================================================================ */


/*=====================Presantation du Widget Card =========================== */
// Le widget Card va etre utiliser pour cree des boite avec un Container comme 
// enfant , il exsite une propriété qui permetter donne un effet d'elevation

/*============================================================================ */

/*=====================Presantation du Widget Padding ======================== */
// Le widget Padding va permmet de positionner sont enfant a l'intérieur d'un 
//  Container ou une Card

/*============================================================================ */

/*=====================Presantation du Widget Row et Column ======================== */
// Le widget Column va permettre d'afficher des enfants les un en dessous des 
// autre  

// Le widget Row va permettre d'afficher des enfants les un a cote des autre
// garce MainAxisAlignment.position_de_element on poura utiliser flexbox 
/*============================================================================ */

/*=====================Presantation du Widget Row et Column ======================== */
//En utilisant, le widget Expanded, dans une Column ou Row, son enfant occupera 
// tout l'espace libre.

// La propriété flex à l'intérieur du widget permet d'établir des proportions
/*============================================================================ */


