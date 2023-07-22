import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynconf 2023"),
      ),
      body: Center(
          child: Column(
        // le mainAxisAlignment permet de gérer l'axe principal
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/logo.svg', color: Colors.blue),
          const Text(
            'Asynconf 2023',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 14, 14, 14),
              fontFamily: 'StoryBook-KpgA',
            ),
          ),
          const Text(
            'Asynconf Conference Virtuel 2023. 27 au 29  octobre 2023',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 19, 19, 19),
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton.icon(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 0, 139, 93),
              ),
              padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
            ),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventPage()),
              ),
            },
            label: const Text(
              'Afficher le planning du salon',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            icon: const Icon(Icons.calendar_today),
          )
        ],
      )),
    );
  }
}
