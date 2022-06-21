import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/login_background.dart';
import 'package:login_app/Screens/Welcome/components/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Color? assignColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return Color.alphaBlend(
          const Color.fromARGB(64, 255, 255, 255), Colors.white);
    } else if (states.contains(MaterialState.pressed)) {
      return Color.alphaBlend(
          const Color.fromARGB(141, 255, 255, 255), Colors.white);
    }
    return Colors.white;
  }

  RoundedRectangleBorder? assignShape(Set<MaterialState> states) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: const BorderSide(
          width: 1,
          style: BorderStyle.solid,
          color: Color.fromARGB(255, 199, 199, 199),
          strokeAlign: StrokeAlign.center),
    );
  }

  BorderSide? assignBorder(Set<MaterialState> states) {
    return const BorderSide(
      width: 10,
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              top: 28,
              left: 22,
              right: 40,
            ),
            child: const Text(
              'Welcome back! Glad to see you, Again!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
              top: 32,
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                filled: true,
                fillColor: Color.fromRGBO(247, 248, 249, 1),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Color.fromARGB(255, 160, 160, 160),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 15,
              left: 22,
              right: 22,
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
                filled: true,
                fillColor: Color.fromRGBO(247, 248, 249, 1),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              obscureText: true,
              keyboardType: TextInputType.text,
            ),
          ),
          LoginButton(
            offsetTop: 62,
            textColor: Colors.white,
            size: size,
            text: ' Login ',
            backgroundColor: const Color.fromRGBO(30, 35, 44, 1),
          ),
        ],
      ),
    ));
  }
}
