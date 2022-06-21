import 'package:flutter/material.dart';
import 'package:login_app/Screens/Welcome/components/background.dart';
import 'package:login_app/Screens/Welcome/components/login_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LoginButton(
            offsetTop: 450,
            textColor: Colors.white,
            size: size,
            text: 'Login',
            backgroundColor: const Color.fromRGBO(30, 35, 44, 1),
          ),
          LoginButton(
            offsetTop: 15,
            textColor: const Color.fromARGB(255, 0, 0, 0),
            size: size,
            text: 'Register',
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}
