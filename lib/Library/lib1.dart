import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesome extends StatefulWidget {
  const FontAwesome({super.key});

  @override
  State<FontAwesome> createState() => _FontAwesomeState();
}

class _FontAwesomeState extends State<FontAwesome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Font Awesome Flutter"),
      ),
      body: Center(
          child: Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                IconButton(
                  onPressed: () => print("Tested"),
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(
                    FontAwesomeIcons.lightbulb,
                    color: Colors.yellow,
                    size: 60,
                  ),
                ),
                    
                SizedBox(
                  height: 50,
                ),
                    
                IconButton(onPressed: () {},
                    icon: FaIcon(
                        FontAwesomeIcons.amazonPay,
                        size: 60,
                    ),),
              
              SizedBox(
                height: 50,
              ),
              
                IconButton(onPressed: (){},
                  icon:
                  FaIcon(
                      FontAwesomeIcons.apple,
                      size: 60,
                    
                  ),),
              
              ],
            ),
          ),
      ),
    );
  }
}
