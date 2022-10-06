import 'package:flutter/material.dart';

class User {
  late String username;
  late String password;
  static List<String> allNames = [];
  static List<String> allPasswords = [];

  // constructor
  User(user, pass) {
    username = user;
    password = pass;
    allNames.add(username);
    allPasswords.add(password);
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

  static bool checkRegister(String username) {
    if (allNames.contains(username)) {
      return false;
    }
    return true;
  }
}

/*
How to save all usernames and passwords beyond session?
 */