// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigation/screens/my_first_screen.dart';
import 'package:navigation/screens/my_second_screen.dart';
import 'package:provider/provider.dart';

import 'providers/app_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppProvider()
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyFirstScreen(),
        routes: {
          "/secondScreen": (context) => MySecondScreen()
        },
      ),
    );
  }
}
