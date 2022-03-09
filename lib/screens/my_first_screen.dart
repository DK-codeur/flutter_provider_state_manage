// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigation/providers/app_provider.dart';
import 'package:provider/provider.dart';
class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({Key? key}) : super(key: key);
  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  int compteur = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, myAppProvider, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: myAppProvider.mycolor,
            title: Text("My First Screen"),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(Icons.settings),
            onPressed: () => context.read<AppProvider>().changeAppBarColor(Colors.red)
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
                    Navigator.pushNamed(
                      context,
                      "/secondScreen",
                      arguments: "ouai! mon super argument!"
                    );
                  },
                  child: Text("Aller sur page 2")
                ),

                SizedBox(height: 40,),

                Text("$compteur"),
                ElevatedButton(
                  //utilisation du setState
                  onPressed: () {
                    setState(() {
                      compteur++;
                    });
                  },
                  child: Text("Incrementer")
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}

