import 'package:assignment12/Library/lib1.dart';
import 'package:assignment12/Library/lib2.dart';
import 'package:assignment12/Library/lib3.dart';
import 'package:assignment12/Library/lib4.dart';
import 'package:assignment12/Library/lib5.dart';
import 'package:assignment12/Library/lib6.dart';
import 'package:assignment12/Library/lib7.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => MyLibrary(), // Home route
      '/fontawesome': (context) => FontAwesome(), // FontAwesome route
      '/alert': (context) => alert(), // FontAwesome route
      '/word': (context) => Words(), // FontAwesome route
      '/speech': (context) => TextToSpeechScreen(), // FontAwesome route
      '/photo': (context) => Photo(), // FontAwesome route
      '/shimmer': (context) => shimmer(),// FontAwesome route
      '/dropdown': (context) => Dropdown() // FontAwesome route
    },
  ));
}

class MyLibrary extends StatefulWidget {
  const MyLibrary({super.key});

  @override
  State<MyLibrary> createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Text(
            "Libraries",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              //This belong to fontAwesome
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fontawesome');
                },
                child: Text(
                  "Font Awesome Flutter",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(500, 50)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  )),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //This is belong to alert
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/alert');
                },
                child: Text(
                  "Alert Flutter",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(500, 50)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  )),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //This is belong English word
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/word');
                },
                child: Text(
                  "English Word Flutter",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(500, 50)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  )),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //This is belong to Text to Speech
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/speech');
                },
                child: Text(
                  "Text To Speech Flutter",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(500, 50)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  )),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //This is belong to photo view
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/photo');
                },
                child: Text(
                  "Photo View Flutter",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(500, 50)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  )),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //This is belong to shimmer
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/shimmer');
                },
                child: Text(
                  "Shimmer Flutter",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(500, 50)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  )),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //This is belong to dropdown button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dropdown');
                },
                child: Text(
                  "Dropdown Flutter",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(500, 50)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  )),
                ),
              ),
            ],
          ),
        ),
    );
  }
}







/*





 */