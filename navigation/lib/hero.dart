import 'package:flutter/material.dart';

class FristPage extends StatelessWidget {
  const FristPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('FristPage')),
        ),
        body: Center(
          child: HeroWidget(
            width: 300.0,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SecondPage()));
            },
          ),
        ));
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
        body: Container(
          height: 60,
          child: HeroWidget(
            width: 500.0,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ));
  }
}

/*
  Animer un widget pendant la transition 

  le widget Hero et son utilisation :

  Ce type d'animation permet d'animer un element de l'ecran lors d'un changement 
  de page.

  Pour utiliser le widget hero il suffit d'intancier 2 widget  avec la meme 
  valeur sur le meme tag  
 */

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    Key? key,
    required this.onTap,
    required this.width,
  }) : super(key: key);

  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: "Hero",
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: onTap,
              child: Container(
                width: width,
                color: Colors.blue,
              )),
        ));
  }
}
