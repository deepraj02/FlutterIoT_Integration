import 'package:flutter/material.dart';
import 'package:sih_sample_app/main.dart';
import 'package:sih_sample_app/welcome_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_switch/flutter_switch.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

bool isToggLIGHT = false;

class _SecondPageState extends State<SecondPage> {
/*   postData() async {
    var dataSent = http
        .post(Uri.parse("https://senester-six.herokuapp.com/LIGHTNumber"), body: {
      "LIGHT": "",
    });
  }
 */
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: "icon",
              child: Image.asset(
                "images/sih.png",
                width: 350,
                height: 350,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text("LIGHT 1"),
                  ToggleSwitch(
                    minWidth: 80.0,
                    minHeight: 40.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    iconSize: 20.0,
                    activeBgColors: [
                      [Colors.black45, Colors.black26],
                      [Colors.yellow, Colors.orange]
                    ],
                    animate:
                        true, // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves
                        .bounceInOut, // animate must be set to true when using custom curve
                    onToggle: (index) async {
                      try {
                        var url =
                            Uri.parse('https://senester-six.herokuapp.com/');
                        var response = await http.post(url, body: {'led': "1"});
                        print('Response status: ${response.statusCode}');
                        print('Response body: ${response.body}');
                      } on Exception catch (e) {
                        print(e);
                      }
                      print('switched to: $index');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("LIGHT 2"),
                  ToggleSwitch(
                    minWidth: 80.0,
                    minHeight: 40.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    iconSize: 20.0,
                    activeBgColors: [
                      [Colors.black45, Colors.black26],
                      [Colors.yellow, Colors.orange]
                    ],
                    animate:
                        true, // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves
                        .bounceInOut, // animate must be set to true when using custom curve
                    onToggle: (index) async {
                      try {
                        var url =
                            Uri.parse('https://senester-six.herokuapp.com/');
                        var response = await http.post(url, body: {'led': "2"});
                        print('Response status: ${response.statusCode}');
                        print('Response body: ${response.body}');
                      } on Exception catch (e) {
                        print(e);
                      }
                      print('switched to: $index');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("LIGHT 3"),
                  ToggleSwitch(
                    minWidth: 80.0,
                    minHeight: 40.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    iconSize: 20.0,
                    activeBgColors: [
                      [Colors.black45, Colors.black26],
                      [Colors.yellow, Colors.orange]
                    ],
                    animate:
                        true, // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves
                        .bounceInOut, // animate must be set to true when using custom curve
                    onToggle: (index) async {
                      try {
                        var url =
                            Uri.parse('https://senester-six.herokuapp.com/');
                        var response = await http.post(url, body: {'led': "3"});
                        print('Response status: ${response.statusCode}');
                        print('Response body: ${response.body}');
                      } on Exception catch (e) {
                        print(e);
                      }
                      print('switched to: $index');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("LIGHT 4"),
                  ToggleSwitch(
                    minWidth: 80.0,
                    minHeight: 40.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    iconSize: 20.0,
                    activeBgColors: [
                      [Colors.black45, Colors.black26],
                      [Colors.yellow, Colors.orange]
                    ],
                    animate:
                        true, // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves
                        .bounceInOut, // animate must be set to true when using custom curve
                    onToggle: (index) async {
                      try {
                        var url =
                            Uri.parse('https://senester-six.herokuapp.com/');
                        var response = await http.post(url, body: {'led': "4"});
                        print('Response status: ${response.statusCode}');
                        print('Response body: ${response.body}');
                      } on Exception catch (e) {
                        print(e);
                      }
                      print('switched to: $index');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("LIGHT 5"),
                  ToggleSwitch(
                    minWidth: 80.0,
                    minHeight: 40.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    iconSize: 20.0,
                    activeBgColors: [
                      [Colors.black45, Colors.black26],
                      [Colors.yellow, Colors.orange]
                    ],
                    animate:
                        true, // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves
                        .bounceInOut, // animate must be set to true when using custom curve
                    onToggle: (index) async {
                      try {
                        var url =
                            Uri.parse('https://senester-six.herokuapp.com/');
                        var response = await http.post(url, body: {'led': "5"});
                        print('Response status: ${response.statusCode}');
                        print('Response body: ${response.body}');
                      } on Exception catch (e) {
                        print(e);
                      }
                      print('switched to: $index');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("LIGHT 6"),
                  ToggleSwitch(
                    minWidth: 80.0,
                    minHeight: 40.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    iconSize: 20.0,
                    activeBgColors: [
                      [Colors.black45, Colors.black26],
                      [Colors.yellow, Colors.orange]
                    ],
                    animate:
                        true, // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves
                        .bounceInOut, // animate must be set to true when using custom curve
                    onToggle: (index) async {
                      try {
                        var url =
                            Uri.parse('https://senester-six.herokuapp.com/');
                        var response = await http.post(url, body: {'led': "6"});
                        print('Response status: ${response.statusCode}');
                        print('Response body: ${response.body}');
                      } on Exception catch (e) {
                        print(e);
                      }
                      print('switched to: $index');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
