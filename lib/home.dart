// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _launchURL(String urL) async {
    if (!await launch(urL)) throw 'Could not launch $urL';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              const Color(0xff213A50),
              const Color(0xff071930),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(85),
              ),
              child:
                  Image.asset("lib/images/bijoy1.jpg", width: 150, height: 150),
            ),
            SizedBox(height: 10),
            Text(
              "Bijoy Saha",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Container(
              height: 70,
              width: 700,
              child: Expanded(
                child: Text(
                  "I am from  Khulna Universy of Engineering & Technology.Currently learning Backend Development.I also have 5 months of App development experience with Flutter.Looking  for an Internship",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Connect Me",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      _launchURL("https://www.facebook.com/bijoy.saha.906/"),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      child: Image.asset(
                        "lib/images/facebook.jpg",
                        height: 60,
                        width: 50,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _launchURL(
                      "https://www.linkedin.com/in/bijoy-saha-47ba71181/"),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      child: Image.asset(
                        "lib/images/linkdin.png",
                        height: 60,
                        width: 50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      "Hello World! All my Works are here!",
                      textStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://github.com/Bijoy-saha");
                  },
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      child: Image.asset(
                        "lib/images/github.png",
                        height: 60,
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
