import 'package:flutter/material.dart';

/*
  Une  transition en flutter se deroule lors du passage d'une page a l'autre,
  Grace a la class PageRouteBuilder qui va contenir toute les operation en 
  fournissant d'un objet Animation 

  la class PageRouteBuilder est utiliser comme un widget , pour l'intancier 
  il exsite plussieur facont de faire:

  - Par heritage 
  - l'introduir dans l'arbre de widgets 

  Elle contien de collback :
  - pageBuilder il va construire la prochaine  page 
  - transitionsBuilder il va construire la transition entre page 
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
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, createPageRoute(const SecondPage()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Page 1'),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('SecondPage')),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('SecondPage'),
          ),
        ),
      ),
    );
  }
}
/*
  Une transition en flutters peut se configurer avec l'aide plussieur widget mis 
  a disposition dans la class TransitionBuilder.
  
  Tween est un objet qui definir le sens de l'animation il composser deux vecteur

  AnimatedWidget est un widget qui va construire l'animation de la transition 

  CurveTween va gerer la vitesse de la page 
*/

Route createPageRoute(Widget page) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween<Offset>(begin: begin, end: end)
            .chain(CurveTween(curve: curve));
/*
  SlideTransition : animer une glissade de l'objet,

  FadeTransition : animer l'opacité de l'objet,

  RotationTransition : animer la rotation de l'objet,

  SizeTransition : animer la taille attribuée à l'objet par rapport à l'écran,

  ScaleTransition : animer la taille de l'objet et de son contenu
*/
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
