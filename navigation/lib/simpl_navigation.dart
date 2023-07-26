import "package:flutter/material.dart";

/*
  Nvigation simple en Flutter 

  la navigation va etre gerer par la classe Navigator elle se voit comme un 
  syteme de pile , chaque route (page) va sera empiler les une au-dessu des autre,
  la premiere de la pile sera celle qu'on affichera 

  Navigator va faire la gestion de la pile des routes grace a deux fonctions :
  push() pour empiler une nouvelle route
  pop() pour retirer la dernière route empilée 
 */
class FristPage extends StatelessWidget {
  const FristPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('FristPage')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Page 1'),
              onPressed: () async {
                final int result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondPage(text: 'Page 1')),
                );
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text('$result')));
              },
            ),
            ElevatedButton(
              child: const Text('Page 2'),
              onPressed: () async {
                final int result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondPage(text: 'Page 2')),
                );
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text('$result')));
              },
            ),
          ],
        ),
      ),
    );
  }
}
/*
  Nvigation parteger des donnee entre les page 

  En flutter pour envoyer des donnee entre deux page on utilisera un 
  constructeur aux classe pour les intancer et ajouter des argument

  en theorie on  procedera  par le rajoute d'une varibale a la classe sera mis en 
  parramettre du constructeur 


*/

class SecondPage extends StatelessWidget {
  final dynamic text;
// Le constructeur peut aussi recevoir des parametre
// le mot cle this fait reference a  l'intance actuel elle permet
// d'acceder au varible est au methode
// cette fonctionnaliter seront intressante avec les page  stateFulWidget 
// car les donne afficher peuvent etre dynamique changees entre les page 
  const SecondPage({Key? key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('SecondPage')),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 1);
              },
              child: const Text('SecondPage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 2);
              },
              child: const Text('SecondPage'),
            ),
          ],
        ),
      ),
    );
  }
}
