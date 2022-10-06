import 'package:flutter/material.dart';
import 'package:knights4love_app/main.dart';

//Dashboard screen layout
//Needs to check if login is successful, if not dont change pages, if so then go to survey

//Create question style option to make adding new questions easy, use this site
//https://api.flutter.dev/flutter/material/ListTile-class.html
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dashboard',
            textAlign: TextAlign.right,
            textScaleFactor: 1,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Go to the homepage',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Homepage()),
                    (Route<dynamic> route) => false);
              },
            ),
          ],
        ),
        body: const Center());
  }
}

/*
Top bar:
  K4L logo

Page layout:
  top three matches
  verse of the day
  upcoming calvin events

Bottom bar:
  left, current 'main' page
  center, chat page, use onPressed: _Chats to go to void screen function
  right, settings page, can log out aka go to homescreen
 */