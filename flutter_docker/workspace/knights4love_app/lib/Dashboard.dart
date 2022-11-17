import 'package:flutter/material.dart';
import 'DashboardPages/Settings.dart';
import 'DashboardPages/Messages.dart';
import 'DashboardPages/Profile.dart';

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
        centerTitle: true,
        title: const Text(
          'Dashboard',
          textAlign: TextAlign.right,
          textScaleFactor: 1,
        ),
      ),
      body: Center(
          child: Column(children: <Widget>[
        const Spacer(
          flex: 4,
        ),

        //Top match
        Container(
          padding: const EdgeInsets.all(10),
          color: const Color.fromARGB(255, 180, 17, 17),
          child: const Text(
            'Your top matches',
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Color.fromARGB(255, 224, 203, 19),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),

        //Top match
        Container(
          padding: const EdgeInsets.all(10),
          color: const Color.fromARGB(255, 180, 17, 17),
          child: const Text(
            'Top match',
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Color.fromARGB(255, 224, 203, 19),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),

        //Top match
        Container(
          padding: const EdgeInsets.all(10),
          color: const Color.fromARGB(255, 180, 17, 17),
          child: const Text(
            'Next Match',
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Color.fromARGB(255, 224, 203, 19),
            ),
          ),
        ),

        //Put in buttons that go to chats

        const Spacer(
          flex: 4,
        ),

        //Verse of the week
        const Text(
          'Verse of the week',
          textScaleFactor: 1.35,
        ),
        const Text(
          'Jesus WEPT',
          textScaleFactor: 1.2,
        ),

        const Spacer(
          flex: 4,
        )
      ])),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: const Color.fromARGB(255, 180, 17, 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //Home
              IconButton(
                icon: const Icon(Icons.home),
                tooltip: 'Go to the homepage',
                color: const Color.fromARGB(255, 224, 203, 19),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                      (Route<dynamic> route) => false);
                },
              ),

              //Messages
              IconButton(
                icon: const Icon(Icons.message),
                tooltip: 'Go to the homepage',
                color: const Color.fromARGB(255, 224, 203, 19),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                      (Route<dynamic> route) => false);
                },
              ),

              //Profile
              IconButton(
                icon: const Icon(Icons.person),
                tooltip: 'Go to the homepage',
                color: const Color.fromARGB(255, 224, 203, 19),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                      (Route<dynamic> route) => false);
                },
              ),

              //Settings
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Go to the homepage',
                color: const Color.fromARGB(255, 224, 203, 19),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                      (Route<dynamic> route) => false);
                },
              ),
            ],
          )),
    );
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

//Use children instead of child for multiple icons
//https://www.codegrepper.com/search.php?answer_removed=1&q=displaying%20a%20row%20of%20icons%20in%20flutter
            
 */



