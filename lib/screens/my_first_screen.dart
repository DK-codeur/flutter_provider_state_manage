// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class MyFirstScreen extends StatelessWidget {
 const MyFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello! cliquer sur le boutton ci-dessous pour accéder à la seconde page",
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                //naviguer vers MySecondScreen
              },
              child: Text("Aller sur page 2")
            )
          ],
        ),
      ),
    );
  }
}

