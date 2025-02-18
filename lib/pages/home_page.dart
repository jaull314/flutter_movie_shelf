import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 235, 200),
      appBar: AppBar(
        title: Text("Movie Shelves", style: TextStyle(color: Colors.yellow, fontSize: 40)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 74, 122),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
              Container(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 16, 74, 122)),
                  onPressed: (){
                    Navigator.pushNamed(context, '/YouTubeShelf');
                  },
                  child: Text("YouTube Shelf",  style: TextStyle(fontWeight: FontWeight.bold, fontSize:20, color: Colors.yellow))
                )
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 16, 74, 122)),
                  onPressed: (){
                    Navigator.pushNamed(context, '/AmazonShelf');
                  },
                  child: Text("Amazon Shelf", style: TextStyle(fontWeight: FontWeight.bold, fontSize:20, color: Colors.yellow))
                )
              )
          ]
      )
    );
  }
}
