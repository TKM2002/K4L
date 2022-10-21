import 'package:flutter/material.dart';
import 'package:knights4love_app/main.dart';
import 'surveyQuestions/Q1.dart';

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
            child: Column(children: <Widget>[
          const Spacer(
            flex: 4,
          ),
          const Text(
            'Please fill out the following questions',
            textAlign: TextAlign.center,
            textScaleFactor: 3,
          ),
          const Spacer(
            flex: 4,
          ),
          const TextField(
            controller: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Name',
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const TextField(
            controller: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Last Name',
            ),
          ),
          const Spacer(
            flex: 4,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 233, 6, 6)),
              foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 224, 203, 19)),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Q1()),
                  (Route<dynamic> route) => false);
            },
            child: const Text(
              'Next',
              textScaleFactor: 1.5,
            ),
          ),
          const Spacer(
            flex: 4,
          )
        ])));
  }
}

/*
Put all questions into folder, just make lots of files
 */