import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/youtube_shelf.dart';
import './pages/amazon_shelf.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => HomePage(),
      '/YouTubeShelf': (context) => YouTubeShelf(),
      '/AmazonShelf': (context) => AmazonShelf()
    }
  ));
}

