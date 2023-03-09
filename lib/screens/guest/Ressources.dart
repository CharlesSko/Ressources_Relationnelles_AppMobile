// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ressources_relationnel/screens/guest/Accueille.dart';
import 'package:ressources_relationnel/screens/guest/Insc.dart';
import 'package:ressources_relationnel/screens/guest/Auth.dart';
import 'package:ressources_relationnel/screens/guest/ressource/RessourceGoggle.dart';

class RessourcesScreen extends StatefulWidget {
  const RessourcesScreen({super.key});

  @override
  State<RessourcesScreen> createState() => _RessourcesScreenState();
}

class _RessourcesScreenState extends State<RessourcesScreen> {
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
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  'images/Google.png',
                ),
                Text(
                  'Android 14, IA, Pixel Tablet... La conférence Google I/O 2023 se tiendra le 10 mai',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.favorite_border_outlined),
                      onPressed: () => print('Like'),
                    ),
                    IconButton(
                      icon: const Icon(Icons.messenger_outline),
                      onPressed: () => print('Message'),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const RessourceGoggleScreen()),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Image.asset(
                  'images/Google.png',
                ),
                Text(
                  'Android 14, IA, Pixel Tablet... La conférence Google I/O 2023 se tiendra le 10 mai',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.favorite_border_outlined),
                      onPressed: () => print('Like'),
                    ),
                    IconButton(
                      icon: const Icon(Icons.messenger_outline),
                      onPressed: () => print('Message'),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const RessourceGoggleScreen()),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
