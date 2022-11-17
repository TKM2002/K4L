import 'package:flutter/material.dart';

class User {
  static late String username;
  static late String password;
  static String firstName = "";
  static String lastName = "";
  static List<String> allNames = [];
  static List<String> allPasswords = [];
  static List<int> Answers = [];

  // constructor
  User(user, pass) {
    username = user;
    password = pass;
    allNames.add(username);
    allPasswords.add(password);
    Answers;
    firstName;
    lastName;
  }

  // check username and password
  static bool checkLogin(String username, String password) {
    if (allNames.contains(username)) {
      if (allPasswords.elementAt(allNames.indexOf(username)) == password) {
        return true;
      }
    }

    return false;
  }

  //Check if the username is already taken
  static bool checkRegister(String username) {
    if (allNames.contains(username)) {
      return false;
    }
    return true;
  }

  //Set first name
  static void setFirst(String name) {
    firstName = name;
  }

  //Set last name
  static void setLast(String name) {
    lastName = name;
  }

  //Set username
  static void setUsername(String name) {
    username = name;
  }

  //Set password
  static void setPassword(String name) {
    password = name;
  }

  //Add question answers into list
  static void addAnswer(int answer) {
    Answers.add(answer);
  }

  //Make a method to delete items from list
}

/*
How to save all usernames and passwords beyond session? Need to run on server
 */