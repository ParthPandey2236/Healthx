import 'package:elchackathon_app/AboutPage.dart';
import 'package:elchackathon_app/ChatPage.dart';
import 'package:elchackathon_app/DietPage.dart';
import 'package:elchackathon_app/SymptomsPage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum BottomIcons { Symptoms, Chat, Diet, About }

class _HomePageState extends State<HomePage> {
  BottomIcons bottomIcons = BottomIcons.Symptoms;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            bottomIcons == BottomIcons.Symptoms
                ? Symptoms() // edit in SymptomsPage.dart
                : Container(),
            bottomIcons == BottomIcons.Chat
                ? Chat() //edit in ChatPage.dart
                : Container(),
            bottomIcons == BottomIcons.Diet
                ? Diet() //edit in DietPage.dart
                : Container(),
            bottomIcons == BottomIcons.About
                ? About() //edit in AboutPage.dart
                : Container(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding:
                    EdgeInsets.only(left: 24, right: 24, bottom: 16, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BottomBar(
                        onPressed: () {
                          setState(() {
                            bottomIcons = BottomIcons.Symptoms;
                          });
                        },
                        bottomIcons:
                            bottomIcons == BottomIcons.Symptoms ? true : false,
                        icons: EvaIcons.heartOutline,
                        text: "Symptoms"),
                    BottomBar(
                        onPressed: () {
                          setState(() {
                            bottomIcons = BottomIcons.Chat;
                          });
                        },
                        bottomIcons:
                            bottomIcons == BottomIcons.Chat ? true : false,
                        icons: EvaIcons.messageCircleOutline,
                        text: "Chat"),
                    BottomBar(
                        onPressed: () {
                          setState(() {
                            bottomIcons = BottomIcons.Diet;
                          });
                        },
                        bottomIcons:
                            bottomIcons == BottomIcons.Diet ? true : false,
                        icons: EvaIcons.activityOutline,
                        text: "Diet and Exercise"),
                    BottomBar(
                        onPressed: () {
                          setState(() {
                            bottomIcons = BottomIcons.About;
                          });
                        },
                        bottomIcons:
                            bottomIcons == BottomIcons.About ? true : false,
                        icons: EvaIcons.questionMarkCircleOutline,
                        text: "About"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
