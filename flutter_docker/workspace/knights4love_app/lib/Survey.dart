import 'package:flutter/material.dart';
import 'package:knights4love_app/main.dart';
import 'surveyQuestions/Q1.dart';
import 'package:knights4love_app/User.dart';

class Survey extends StatelessWidget {
  Survey({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstName = TextEditingController();
    TextEditingController lastName = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
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

          //HEADING
          const Text(
            'Please fill out the following questions',
            textAlign: TextAlign.center,
            textScaleFactor: 3,
          ),
          const Spacer(
            flex: 4,
          ),

          //FIRST NAME
          TextField(
            controller: firstName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Name',
            ),
          ),
          const Spacer(
            flex: 1,
          ),

          //LAST NAME
          TextField(
            controller: lastName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Last Name',
            ),
          ),
          const Spacer(
            flex: 4,
          ),

          //NEXT
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 233, 6, 6)),
              foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 224, 203, 19)),
            ),
            onPressed: () {
              User.setFirst(firstName.text);
              User.setLast(lastName.text);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Q1()),
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