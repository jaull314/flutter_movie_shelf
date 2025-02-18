import 'package:flutter/material.dart';


class AmazonShelf extends StatelessWidget {

  final List<List<String>> movies = [
    ["Warrior", 'assets/Warrior.webp'],
    ["Dances With Wolves", 'assets/DancesWithWolves.webp'],
    ["Mystery, Alaska", 'assets/MysteryAlaska.webp'],
    ["American Underdog", 'assets/AmericanUnderdog.webp'],
    ["The Next Three Days", 'assets/TheNextThreeDays.webp'],
    ["Jumper", 'assets/Jumper.webp'],
    ["Blue Streak", 'assets/BlueStreak.webp'],
    ["The Italian Job", 'assets/TheItalianJob.webp'],
    ["Tucker & Dale Vs Evil", 'assets/TuckerAndDaleVsEvil.webp'],
    ["See No Evil, Hear No Evil", 'assets/SeeNoEvilHearNoEvil.webp'],
    ["Point Break", 'assets/PointBreak.webp'],
    ["Hot Fuzz", 'assets/HotFuzz.webp']

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
        title: Text("Amazon Movies", style: TextStyle(color: Colors.yellow, fontSize: 40)),
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


