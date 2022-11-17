import 'package:flutter/material.dart';
import 'package:knights4love_app/Survey.dart';
import 'package:knights4love_app/User.dart';

//Register screen layout
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();

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
                controller: username,
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
                obscureText: true,
                controller: password,
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
                obscureText: true,
                controller: confirmPassword,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            const Spacer(),

            //Register
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
                  onPressed: () {
                    if (password.text == confirmPassword.text &&
                        User.checkRegister(username.text)) {
                      User.setUsername(username.text);
                      User.setPassword(password.text);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Survey()),
                          (Route<dynamic> route) => false);
                    } else {
                      //Put error message, "that username is taken please choose a different one"
                    }
                  },
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
  }
}
