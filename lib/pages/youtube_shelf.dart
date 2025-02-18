import 'package:flutter/material.dart';


class YouTubeShelf extends StatelessWidget {

  final List<List<String>> movies = [
    ["The Convert", 'assets/TheConvert.webp'], 
    ["OSS117", 'assets/OSS117.webp'], 
    ["Four Brothers", 'assets/FourBrothers.jpg'], 
    ["Dumb and Dumber", 'assets/DumbAndDumber.webp'],
    ["The Covenant", 'assets/TheCovenant.webp'], 
    ["I Am Chris Farley", 'assets/IAmChrisFarley.webp'], 
    ["Heat", 'assets/Heat.webp'],
    ["Good Will Hunting", 'assets/GoodWillHunting.webp'],
    ["The Town", 'assets/TheTown.webp'],
    ["Ironclad", 'assets/Ironclad.webp'],
    ["We Are Marshall", 'assets/WeAreMarshall.jpg'],
    ["John Wick", 'assets/JohnWick.webp'],
    ["The Place Beyond The Pines", 'assets/ThePlaceBeyondThePines.jpg'],
    ["Drive", 'assets/Drive.webp']
 ];

  Widget movieTemplate(List<String> movie){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Expanded(child: Text(movie[0], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))), 
            Expanded(child: Image(width: 100, height: 150, image: AssetImage(movie[1])))
          ]
        ))
      );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 235, 200),
      appBar: AppBar(
        title: Text("YouTube Movies", style: TextStyle(color: Colors.yellow, fontSize: 40)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 74, 122),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: movies.map((movie) => movieTemplate(movie)).toList()
        )
      )
    );
  }
}


