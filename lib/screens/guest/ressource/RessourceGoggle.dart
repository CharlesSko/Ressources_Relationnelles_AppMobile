// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ressources_relationnel/screens/guest/Accueille.dart';
import 'package:ressources_relationnel/screens/guest/Insc.dart';
import 'package:ressources_relationnel/screens/guest/Auth.dart';
import 'package:ressources_relationnel/screens/guest/Ressources.dart';

class RessourceGoggleScreen extends StatefulWidget {
  const RessourceGoggleScreen({super.key});

  @override
  State<RessourceGoggleScreen> createState() => _RessourceGoggleScreenState();
}

class _RessourceGoggleScreenState extends State<RessourceGoggleScreen> {
  @override
  Widget build(BuildContext context) {
    int compteurLike = 0;
    int compteurMessage = 0;

    void incrementCounter() {
      setState(() {
        compteurLike = compteurLike + 1;
      });
    }

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
                    MaterialPageRoute(
                        builder: (context) => const RessourcesScreen()),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthScreen()),
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/The_Blue_Marble_%28remastered%29.jpg/280px-The_Blue_Marble_%28remastered%29.jpg',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Crée le 09/03/23 par CharlesS',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  'images/Google.png',
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: IconButton(
                        onPressed: incrementCounter,
                        icon: const Icon(Icons.favorite_border_outlined),
                      ),
                    ),
                    Text(
                      '$compteurLike',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Flexible(
                      flex: 1,
                      child: IconButton(
                        icon: const Icon(Icons.messenger_outline),
                        onPressed: () => print('Message'),
                      ),
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Android 14, IA, Pixel Tablet... La conférence Google I/O 2023 se tiendra le 10 mai',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'La firme de Mountain View tiendra sa conférence Google I/O le 10 mai prochain. L’occasion de découvrir des nouveautés logicielles, et peut-être même des produits inédits.',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Initialement destinée aux développeurs, la Google I/O est peu à peu devenue un rendez-vous plus global, permettant à la marque de présenter ses nouveautés. Sundar Pinchai, PDG d\'Alphabet, vient officiellement d’annoncer que l’édition 2023 se tiendrait le 10 mai prochain.',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Si les derniers rendez-vous se sont exclusivement déroulés en ligne à cause de la Covid-19, la conférence devrait se tenir devant une audience réelle, mais restreinte. Une première depuis quatre ans, même si cette édition sera bien évidemment retransmise sur le Net. C’est une nouvelle fois l’amphithéâtre Shoreline, à quelque pas du quartier général de Google, qui accueillera l’événement.',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Côté logiciel, on s’attend bien sûr à en apprendre un peu plus sur les nouveautés d’Android 14, alors que la Developers Preview 1 est déjà disponible.',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'En ce qui concerne les produits, on espère apercevoir la Pixel Tablet, voire le modèle pliable de la gamme Pixel. Une nouvelle version des Pixel Buds Pro est également à prévoir.',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Alors que la firme semble miser gros sur l’intelligence artificielle, l’événement devrait faire la part belle à cette problématique. En 2023, Google devrait d’ailleurs lancer Bard, un projet censé tenir tête à l’impressionnant bot conversationnel ChatGPT. Il ne serait donc pas étonnant d’en entendre parler.',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.justify,
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
