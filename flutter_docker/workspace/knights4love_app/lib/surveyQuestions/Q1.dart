import 'package:flutter/material.dart';
import 'package:knights4love_app/main.dart';
import 'package:knights4love_app/User.dart';
import 'package:knights4love_app/surveyQuestions/Q2.dart';

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
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
            flex: 1,
          ),

          //QUESTION TEXT
          const Text(
            'Question 1',
            textAlign: TextAlign.center,
            textScaleFactor: 3,
          ),
          const Spacer(
            flex: 1,
          ),

          //ANSWER 1
          ListTile(
            title: const Text('Answer 1'),
            trailing: const Icon(Icons.adjust),
            onTap: () => {
              User.addAnswer(1),
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Q2()),
                  (Route<dynamic> route) => false)
            },
          ),

          //ANSWER 2
          ListTile(
            title: const Text('Answer 2'),
            trailing: const Icon(Icons.adjust),
            onTap: () => {
              User.addAnswer(2),
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Q2()),
                  (Route<dynamic> route) => false)
            },
            //tileColor: bool ? Colors.green : Colors.blue,
            //selectedColor: Colors.green,
            //selected: bool,
          ),

          //ANSWER 3
          ListTile(
            title: const Text('Answer 3'),
            trailing: const Icon(Icons.adjust),
            onTap: () => {
              User.addAnswer(3),
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Q2()),
                  (Route<dynamic> route) => false)
            },
          ),

          //ANSWER 4
          ListTile(
            title: const Text('Answer 4'),
            trailing: const Icon(Icons.adjust),
            onTap: () => {
              User.addAnswer(4),
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Q2()),
                  (Route<dynamic> route) => false)
            },
          ),

          //ANSWER 5
          ListTile(
            title: const Text('Answer 5'),
            trailing: const Icon(Icons.adjust),
            onTap: () => {
              User.addAnswer(5),
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Q2()),
                  (Route<dynamic> route) => false)
            },
          ),
          const Spacer(
            flex: 1,
          ),
        ])));
  }
}
