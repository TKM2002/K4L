import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  //User Profile properties
  static late String username;
  static late String password;
  static late String age;

  static String firstName = "";
  static String lastName = "";
  static List<String> allNames = [];
  static List<String> allPasswords = [];
  static List<int> Answers = [];

  //Creates chat page details
  @override
  _UserState createState() => _UserState();

  //Add a new user to lists, make new list (or file?) for user object
//UPDATE THIS WITH DATABASE
  static void addUser(user, pass) {
    //change to usernames, might not care once database happens
    allNames.add(user);
    allPasswords.add(pass);
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

  //Set age
  static void setAge(String ageChange) {
    age = ageChange;
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

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  const CircleAvatar(
                    //backgroundImage: NetworkImage(User.imageUrl),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            User.firstName,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            User.lastName,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              User.age,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
