import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Photo extends StatelessWidget {
  const Photo({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Photo View Flutter"),
        ),
        body:
        Container(
          child: PhotoView(
            imageProvider: AssetImage("images/citadel-of-herat-herat.jpg"),
          ),
        ),
      );
    }
  }

