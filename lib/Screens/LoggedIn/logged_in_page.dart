import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/login_background.dart';

class LoggedInPage extends StatelessWidget {
  const LoggedInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LoginBackground(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(
              left: 22,
              top: 56,
            ),
            child: const BackButton(),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 265,
              left: 22,
              right: 40,
            ),
            child: const Text(
              'Logged In 🎉',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 90,
            ),
            child: Image.asset("assets/icons/Branding.png"),
          )
        ],
      ),
    ));
  }
}
