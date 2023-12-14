import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';



class TextToSpeechScreen extends StatefulWidget {
  @override
  _TextToSpeechScreenState createState() => _TextToSpeechScreenState();
}

class _TextToSpeechScreenState extends State<TextToSpeechScreen> {
  FlutterTts flutterTts = FlutterTts();
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    flutterTts.setLanguage('en-US');
    flutterTts.setPitch(1.0);
  }

  Future<void> speak() async {
    String inputText = textEditingController.text;
    await flutterTts.speak(inputText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text-to-Speech'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(hintText: "",
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: speak,
              child: Text('Speak',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
                style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)) ,

            ),
          ],
        ),
      ),
    );
  }
}