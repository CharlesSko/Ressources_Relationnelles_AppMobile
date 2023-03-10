import 'package:flutter/material.dart';
import 'package:ressources_relationnel/screens/guest/Accueille.dart';
import 'package:ressources_relationnel/screens/guest/Insc.dart';
import 'package:ressources_relationnel/screens/guest/Ressources.dart';
import 'package:ressources_relationnel/screens/guest/Auth.dart';
import 'package:dio/dio.dart';

void main() => runApp(App());

////////Exemple appel API

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

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final dio = Dio();

  var reponse = 0;

  void getHttp(String id) async {
    try {
      var response =
          await dio.get('http://127.0.0.1:8000/api/publications/{' + id + '}');
      //await dio.get('http://127.0.0.1:8000/api/publications');
      print(response);
      this.reponse = response.data;
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  /*
  void gettHttp(String id) async{
    try {
      var reponse = await Dio().get('127.0.0.1:8000/api/publications/{'+id+'}'); 
    };
  }
  */

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Color(0xFF355689);
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 5,
          backgroundColor: Color(0xFF355689),
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
        // ignore: prefer_const_constructors
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
                    children: [
                      SizedBox(
                        height: 75.0,
                      ),
                      Text(
                        'Ressources Relationnelles',
                        style: TextStyle(
                          fontSize: 50.0,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        'La plateforme qui met à votre disposition des outils numériques pour améliorer la qualité de vos liens sociaux et renforcer votre bien-être.',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 12.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Color(0xFF355689),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InscScreen()),
                          );
                        },
                        child: Text(
                          'Créez votre compte',
                          style: TextStyle(
                            color: Colors.white,
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
                            vertical: 12.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Color(0xFF355689),
                        ),
                        ////////////////////////////////////////////////////Appel API
                        onPressed: () {
                          getHttp('1');
                        },
                        /////////////////////////////////////////////////////////////////
                        child: Text(
                          'Connectez-vous',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150.0,
                      ),
                      Text(
                        'Notre équipe',
                        style: TextStyle(
                          fontSize: 50.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 140.0,
                        backgroundImage: AssetImage(
                          'images/Contacts_icon.png',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Cyprien Crombez',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Développeur back-end',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 140.0,
                        backgroundImage: AssetImage(
                          'images/Contacts_icon.png',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Maxence Vandekerckhove',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Développeur front-end',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 140.0,
                        backgroundImage: AssetImage(
                          'images/Contacts_icon.png',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Charles Skorupka',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Développeur mobile',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 100.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AuthScreen()),
                          );
                        },
                        child: Text(
                          'Contact',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Notre site',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'ressources.relationnelles.gouv.fr',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Sites du gouvernement',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'data.gouv.fr',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'gouvernement.fr',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'legifrance.gouv.fr',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'service-public.fr',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50.0,
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
