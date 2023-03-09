import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ressources_relationnel/screens/guest/Accueille.dart';
import 'package:ressources_relationnel/screens/guest/ressource/Test.dart';

Future<List<dynamic>> fetchData() async {
  final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/publications'));

  // Affiche la réponse de l'API dans la console
  print('Réponse de l\'API : ${response.body}');

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
} 

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
