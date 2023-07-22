import 'package:flutter/material.dart';
import 'DrawerDivider.dart';

class CartePage extends StatelessWidget {
  const CartePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerDivider(),
      appBar: AppBar(
        title: const Text("Carte de visite"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              child: Container(
                  height: 150,
                  width: 300,
                  color: Colors.grey,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30,
                        ),
                      ),
                      Text(
                        "La Plage",
                        style: TextStyle(fontSize: 45, color: Colors.white),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
