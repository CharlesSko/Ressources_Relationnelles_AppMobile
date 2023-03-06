// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD8E5F9),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                Text(
                  'Connexion',
                  style: TextStyle(
                    fontSize: 50.0,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Pseudo'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Ex : Bob',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Color(0xFFA41C61),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Mots de passe'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Ex : 1234',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Color(0xFFA41C61),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          backgroundColor: Color(0xFFA41C61),
                        ),
                        onPressed: () =>
                            print('send'), //Vérification UserName / Password
                        child: Text(
                          'Connexion',
                          style: TextStyle(
                            color: Color(0xFFD8E5F9),
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          backgroundColor: Color(0xFFA41C61),
                        ),
                        onPressed: () =>
                            print('send'), //Vérification UserName / Password
                        child: Text(
                          'Inscription',
                          style: TextStyle(
                            color: Color(0xFFD8E5F9),
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
