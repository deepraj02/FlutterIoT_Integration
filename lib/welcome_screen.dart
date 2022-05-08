import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sih_sample_app/second_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late Animation logoAnimation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
      //upperBound: 100,
    );
    logoAnimation =
        CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation = ColorTween(
            begin: const Color.fromARGB(255, 221, 198, 156),
            end: const Color.fromARGB(255, 196, 216, 226))
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    //controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: <Widget>[
              Hero(
                tag: 'icon',
                child: SizedBox(
                  child: Image.asset(
                    "images/sih.png",
                  ),
                  height: logoAnimation.value * 500,
                ),
              ),
            ],
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "MargDarshak",
                  textStyle: const TextStyle(
                    fontFamily: 'Lobstar',
                    fontSize: 45.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(244, 31, 29, 29),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "Smart India Hackathon 2022",
                  textStyle: TextStyle(
                    fontFamily: 'Lobstar',
                    fontSize: MediaQuery.of(context).size.width / 13,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(244, 31, 29, 29),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: const Icon(Icons.arrow_forward_ios),
        backgroundColor: const Color.fromARGB(255, 217, 97, 89),
      ),
    );
  }
}
