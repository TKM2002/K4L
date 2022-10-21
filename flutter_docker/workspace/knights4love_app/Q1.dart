import 'package:flutter/material.dart';
import 'package:knights4love_app/main.dart';

class Q1 extends StatelessWidget {
  Q1({super.key});

  final _suggestions = [];
  final List<int> _list = List.generate(20, (i) => i);
  final List<bool> _selected = List.generate(20, (i) => false);

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
            flex: 1,
          ),
          const Text(
            'Question',
            textAlign: TextAlign.center,
            textScaleFactor: 3,
          ),
          const Spacer(
            flex: 1,
          ),
          ListTile(
            title: const Text('Answer 1'),
            trailing: const Icon(Icons.adjust),
            tileColor: Colors.blue,
            onTap: () => Colors.white,
          ),
          const ListTile(
            title: Text('Answer 2'),
            trailing: Icon(Icons.adjust),
          ),
          const ListTile(
            title: Text('Answer 3'),
            trailing: Icon(Icons.adjust),
          ),
          const ListTile(
            title: Text('Answer 4'),
            trailing: Icon(Icons.adjust),
          ),
          const ListTile(
            title: Text('Answer 5'),
            trailing: Icon(Icons.adjust),
          ),
          const Spacer(
            flex: 1,
          ),
        ])));
  }
}
