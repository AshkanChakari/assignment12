import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Words extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final word1 = new WordPair.random();
    final word2 = new WordPair.random();
    final word3 = new WordPair.random();
    final word4 = new WordPair.random();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("English Words Flutter"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(word1.asPascalCase,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  height:3
                ),
              ),
              Text(word2.asPascalCase,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height:3
                ),
              ),
              Text(word3.asPascalCase,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height:3
                ),
              ),
              Text(word4.asPascalCase,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height:3
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
