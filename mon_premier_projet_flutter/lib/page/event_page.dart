import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Planning du salon',
        ),
      ),
      body: Center(
          child: ListView(children: [
        Card(
            child: ListTile(
          leading: FlutterLogo(size: 56.0),
          title: Text('Damien Cavilles - (17h a 18h)'),
          subtitle: Text('git blame --no-offensee ?'),
          trailing: Icon(Icons.more_vert),
        )),
        Card(
            child: ListTile(
          leading: FlutterLogo(size: 56.0),
          title: Text('Planning du salon'),
          subtitle: Text('Planning du salon'),
          trailing: Icon(Icons.more_vert),
        )),
        Card(
            child: ListTile(
          leading: FlutterLogo(size: 56.0),
          title: Text('Planning du salon'),
          subtitle: Text('Planning du salon'),
          trailing: Icon(Icons.more_vert),
        )),
      ])),
    );
  }
}
