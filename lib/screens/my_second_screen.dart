// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:navigation/providers/app_provider.dart';
import 'package:provider/provider.dart';

class MySecondScreen extends StatelessWidget {
  const MySecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var argument = ModalRoute.of(context)?.settings.arguments;

    return Consumer<AppProvider>(
      builder: (context, myAppProvider, child)  {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: myAppProvider.mycolor,
            title: Text("My Second Screen"),
          ),

          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purple,
            child: Icon(Icons.settings),
            onPressed: () => context.read<AppProvider>().changeAppBarColor(Colors.purple)
          ),

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$argument"), //notre argument affiché ici

                SizedBox(height: 30,),

                Text(
                  "Bienvenue sur ma page 2",
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    //navigation vers la page précédente
                    Navigator.pop(context);
                  },
                  child: Text("Retour sur la page 1")
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

