import 'package:flutter/material.dart';
import 'package:ressources_relationnel/screens/guest/Accueille.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Ressource Relationelle',
      home: const AccueilleScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
