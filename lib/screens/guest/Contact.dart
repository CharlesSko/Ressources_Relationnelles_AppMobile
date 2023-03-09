// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ressources_relationnel/screens/guest/Auth.dart';
import 'package:ressources_relationnel/screens/guest/Accueille.dart';
import 'package:ressources_relationnel/screens/guest/Ressources.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD8E5F9),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 5,
          backgroundColor: Color(0xFFD8E5F9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RessourcesScreen()),
                  );
                },
                child: Icon(
                  Icons.apps,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccueilleScreen()),
                  );
                },
                child: Ink.image(
                  fit: BoxFit.cover, // Fixes border issues
                  width: 75,
                  height: 40,
                  image: AssetImage(
                    'images/logo.png',
                  ),
                ),
              ),

              // ignore: prefer_const_literals_to_create_immutables

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthScreen()),
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/The_Blue_Marble_%28remastered%29.jpg/280px-The_Blue_Marble_%28remastered%29.jpg',
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        'Nos coordonnées',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 100.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Pour vous rendre sur place :',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '14 Av. Duquesne, 75350 Paris',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 100.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Pour nous écrire :',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Ministère des Solidarités et de la Santé, Monsieur Olivier Veran, Ministre de la Santé et des Solidarités',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 100.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Pour contacter le standard téléphonique :',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '+33 (0)1 40 15 80 00',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
