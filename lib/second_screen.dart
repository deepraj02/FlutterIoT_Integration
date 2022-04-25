import 'package:flutter/material.dart';
import 'package:sih_sample_app/main.dart';
import 'package:sih_sample_app/welcome_screen.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 196, 216, 226),
        body: Column(
          /* mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, */

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 70,
            ),
            Hero(
              tag: "icon",
              child: Image.asset(
                "images/sih.png",
                width: 380,
                height: 380,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  ButtonWidget(
                      theText: "Button 1", buttonColour: Color(0xFF4CAF50)),
                  ButtonWidget(
                      theText: "Button 1", buttonColour: Color(0xFF008CBA)),
                  ButtonWidget(
                      theText: "Button 1", buttonColour: Color(0xFFf44336)),
                  ButtonWidget(
                      theText: "Button 1", buttonColour: Color(0xFFe7e7e7)),
                  ButtonWidget(
                      theText: "Button 1", buttonColour: Color(0xFF555555)),
                  ButtonWidget(
                      theText: "Button 1", buttonColour: Color(0xFFF0BA69)),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, WelcomeScreen.id);
          },
          child: Icon(Icons.arrow_back_ios_new),
          backgroundColor: Color.fromARGB(255, 217, 97, 89),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  String theText;

  Color buttonColour;
  ButtonWidget({required this.theText, required this.buttonColour});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColour,
      minWidth: 150,
      onPressed: () {},
      child: Text(
        theText,
        style: TextStyle(
          color: Color(0xFF030202),
        ),
      ),
    );
  }
}
