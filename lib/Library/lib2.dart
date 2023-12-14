import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class alert extends StatefulWidget {
  const alert({super.key});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Alert Flutter"),
      ),
      body: Center(
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Button
            ElevatedButton(
              onPressed: () {
                Alert(
                  context: context,
                  type: AlertType.error,
                  title: "Warning",
                  desc: "That web site might be virus.",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "Got it",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      width: 120,
                    )
                  ],
                ).show();
              },
              child: Text(
                "Error Alert",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(170, 50),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
            ),

            SizedBox(
              height: 10,
            ),

            ElevatedButton(
              onPressed: () {
                Alert(
                  context: context,
                  type: AlertType.warning,
                  title: "Forgot Password",
                  desc: "If you forgot your password please enter your email or phone number .",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "Phone Number",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: Color.fromRGBO(0, 179, 134, 1.0),
                    ),
                    DialogButton(
                      child: Text(
                        "E-mail",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(116, 116, 191, 1.0),
                        Color.fromRGBO(52, 138, 199, 1.0)
                      ]),
                    )
                  ],
                ).show();
              },
              child: Text(
                'Warning',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(170, 50),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
            ),
          ],
        )),
      ),
    );
  }
}
