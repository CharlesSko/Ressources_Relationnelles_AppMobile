import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:ressources_relationnel/screens/guest/Accueille.dart';
import 'package:ressources_relationnel/screens/guest/Contact.dart';
import 'package:ressources_relationnel/screens/guest/ressource/Test.dart';

void main() => runApp(App());

////////Exemple appel API
/*
void main(List<String> arguments) async {
  void getData() async {
    http.Response response =
        await http.get(Uri.http('http://127.0.0.1:8000/api', 'publications'));

    if (response.statusCode == 200) {
      String data = response.body;
      //print(data);
    } else {}
  }

  runApp(App());
}
*/

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Ressource Relationelle',
      home: const TestScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
