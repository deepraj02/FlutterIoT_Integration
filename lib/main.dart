import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF5A0F0F),
          title: Text("MargDarshak SIH 2022"),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ))
          ],
        ),
        backgroundColor: Color.fromARGB(255, 213, 196, 196),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/sih.png",
                width: 300,
                height: 300,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonWidget(
                        theText: "Button 1", buttonColour: Colors.greenAccent),
                    ButtonWidget(
                        theText: "Button 1",
                        buttonColour: Colors.lightBlueAccent),
                    ButtonWidget(
                        theText: "Button 1", buttonColour: Colors.blueGrey),
                    ButtonWidget(
                        theText: "Button 1",
                        buttonColour: Color.fromARGB(255, 199, 158, 224)),
                    ButtonWidget(
                        theText: "Button 1",
                        buttonColour: Color.fromARGB(255, 210, 149, 79)),
                    ButtonWidget(
                        theText: "Button 1",
                        buttonColour: Color.fromARGB(255, 240, 186, 105)),
                  ],
                ),
              ),
            ],
          ),
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
