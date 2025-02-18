import 'package:flutter/material.dart';


class YouTubeShelf extends StatelessWidget {

  final List<List<String>> movies = [
    ["Dumb and Dumber", 'assets/DumbAndDumber.webp'], 
    ["Heat", 'assets/Heat.webp'],
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
        title: Text("YouTube Movie Shelf", style: TextStyle(color: Colors.yellow, fontSize: 40)),
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


