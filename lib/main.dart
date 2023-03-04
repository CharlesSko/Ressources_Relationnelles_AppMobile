import 'package:flutter/material.dart';
import 'package:ressources_relationnel/screens/guest/Auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Ressource Relationelle',
      home: const AuthScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
