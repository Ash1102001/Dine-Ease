import 'package:dineease/pages/getstartedchange.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const Start());
}

class Start extends StatefulWidget {
  const Start({super.key});
  @override
  State<Start> createState() {
    return _StartState();
  }
}

class _StartState extends State<Start> {
  Widget?
      activeScreen; // Widget activescreeen = Quizzer (switchScreeen) throws an error as this function and switchscreen function is implementing simultaneously
  // but we want to execute this function first so we'll use initState function.

  @override
  void initState() {
    activeScreen = GetStarted(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = LoginPage();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 2, 42, 56),
            Color.fromARGB(255, 14, 168, 245)
          ])),
          child: Center(
            child: activeScreen,
          ),
        )));
  }
}
