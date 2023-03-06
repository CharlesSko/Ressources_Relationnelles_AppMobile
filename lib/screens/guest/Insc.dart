// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class InscScreen extends StatefulWidget {
  const InscScreen({super.key});

  @override
  State<InscScreen> createState() => _InscScreenState();
}

class _InscScreenState extends State<InscScreen> {
  bool cgcIsChecked = false; //checkbox validation CGC
  @override
  Widget build(BuildContext context) {
    //Couleur Checkbox
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Color(0xFFA41C61);
    }

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
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Inscription',
                  style: TextStyle(
                    fontSize: 50.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 100.0,
                        backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
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
                      Text('Confimez mots de passe'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                      Text('Adresse email'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                      Text('Téléphone'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                      Text('Ville'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                      Text('Adresse'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                      Text('Code postal'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                      Text('Date de naissance'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: cgcIsChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                cgcIsChecked = value!;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                              'CGU : Conditions générales d\’utilisation',
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Color(0xFFA41C61),
                        ),
                        onPressed: () =>
                            print('send'), //Vérification UserName / Password
                        child: Text(
                          'Inscription',
                          style: TextStyle(
                            color: Color(0xFFD8E5F9),
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Color(0xFFA41C61),
                        ),
                        onPressed: () =>
                            print('send'), //Vérification UserName / Password
                        child: Text(
                          'Annuler',
                          style: TextStyle(
                            color: Color(0xFFD8E5F9),
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ],
                  ),
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
