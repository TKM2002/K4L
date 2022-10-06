import 'package:flutter/material.dart';
import 'package:knights4love_app/main.dart';

class Survey extends StatelessWidget {
  Survey({super.key});

  final _suggestions = [];

  @override
  Widget build(BuildContext context) {
    var nameController;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Survey',
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
        body: Center(
            child: Column(children: const <Widget>[
          Spacer(
            flex: 1,
          ),
          Text(
            'Please fill out the following questions',
            textAlign: TextAlign.center,
            textScaleFactor: 3,
          ),
          Spacer(
            flex: 1,
          ),
          TextField(
            controller: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Name',
            ),
          ),
          Spacer(
            flex: 1,
          ),
          TextField(
            controller: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Last Name',
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ])));
  }
}

/*
Put all questions into folder, just make lots of files
 */