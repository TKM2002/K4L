// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//Joshua DeWindt
//Remember to run 'flutter run' from VS code terminal to start

import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleSpacing: 70,
          backgroundColor: Color.fromARGB(255, 180, 17, 17),
          foregroundColor: Color.fromARGB(255, 224, 203, 19),
        ),
      ),
      home: const RandomWords(),
    );
  }
}

//define class
//start with global variables
//then define app bar and body
class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to Knights 4 Love',
//How to make text wrap?
          textAlign: TextAlign.left,
          textScaleFactor: 1,
        ),
        toolbarHeight: 110,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
//Add a picture here, adjust buttons to be closer together

            //Login button
            Container(
                margin: const EdgeInsets.symmetric(),
                height: 50,
                width: 200,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 233, 6, 6)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 224, 203, 19)),
                  ),
                  onPressed: _pushLogin,
                  child: const Text(
                    'Click here to login',
                    textScaleFactor: 1.5,
                  ),
                )),

            //Register button
            Container(
                margin: const EdgeInsets.symmetric(),
                height: 50,
                width: 220,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 233, 6, 6)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 224, 203, 19)),
                  ),
                  onPressed: _pushRegister,
                  child: const Text(
                    'Click here to register',
                    textScaleFactor: 1.5,
                  ),
                ))
          ])),
      backgroundColor: const Color.fromARGB(255, 92, 13, 13),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 233, 6, 6),
        child: Container(height: 50.0),
      ),
    );
  }

/*
https://www.tutorialkart.com/flutter/flutter-login-screen/
How to create login/register screen
added 9/22/2022

https://www.flutterbeads.com/space-between-widgets-in-flutter/
How to make space between child elements
added 9/22/2022
*/

//Login screen layout
  void _pushLogin() {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
      var nameController;
      return Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
            titleSpacing: 110,
          ),
          body: Center(
            child: Column(children: <Widget>[
              const Spacer(
                flex: 1,
              ),

              //Username
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),

              //Password
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ]),
          ));
    }));
  }

//Register screen layout
  void _pushRegister() {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
      var nameController;
      return Scaffold(
          appBar: AppBar(
            title: const Text('Register'),
            titleSpacing: 110,
          ),
          body: Center(
            child: Column(children: <Widget>[
              const Spacer(
                flex: 2,
              ),

              //Username
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),

              //Password
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),

              //Confirm Password
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              const Spacer(),

              //Register
//Add username/password to list to be checked for login, global list in class?

//Get info from text boxes using below site
//https://docs.flutter.dev/cookbook/forms/retrieve-input
//https://stackoverflow.com/questions/71941215/flutter-how-do-i-save-input-from-a-text-field-to-an-int-variable
              Container(
                  margin: const EdgeInsets.symmetric(),
                  height: 50,
                  width: 200,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 233, 6, 6)),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 224, 203, 19)),
                    ),
                    onPressed: _confirmRegistration,
//Maybe use textfield here, or onPressed to save username and password
//Can save them when moving to user dashboard in new function?
                    child: const Text(
                      'Register',
                      textScaleFactor: 1.5,
                    ),
                  )),
              const Spacer(
                flex: 4,
              ),
            ]),
          ));
    }));
  }

//Dashboard screen layout
//Needs to check if login is successful
  void _confirmRegistration() {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
      return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(children: <Widget>[]),
          ));
    }));
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}
