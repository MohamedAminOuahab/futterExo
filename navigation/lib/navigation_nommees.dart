import 'package:flutter/material.dart';
/*
  Navigation nommees va etre utilisees si on doit souvent naviger sur la meme page

  On commence par definir la route intital dans MaterialApp()

  On aura de function qui permettront le passage entre les route sont :

  pushNamed(le permier permier parametre sera le context , le deuxieme parametre sera le nom de la route)
  pop() elle fonctionne de la meme facont que dens la navigation

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
            Navigator.pushNamed(context, '/secondPage');
          },
          child: const Text('Page 1'),
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
          child: const Text('SecondPage'),
        ),
      ),
    );
  }
}