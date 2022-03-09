// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MySecondScreen extends StatelessWidget {
 const MySecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bienvenue sur ma page 2",
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                //navigation vers la page précédente
              },
              child: Text("Retour sur la page 1")
            )
          ],
        ),
      ),
    );
  }
}
