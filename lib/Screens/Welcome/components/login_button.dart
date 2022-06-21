import 'package:flutter/material.dart';
import 'package:login_app/Screens/LoggedIn/logged_in_page.dart';
import 'package:login_app/Screens/Login/login_screen.dart';
import 'package:login_app/Screens/Register/register_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.backgroundColor,
    required this.size,
    required this.offsetTop,
    required this.textColor,
    required this.text,
  }) : super(key: key);

  final Size size;
  final double offsetTop;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    Color? assignColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.hovered)) {
        return Color.alphaBlend(
            const Color.fromARGB(64, 255, 255, 255), backgroundColor);
      } else if (states.contains(MaterialState.pressed)) {
        return Color.alphaBlend(
            const Color.fromARGB(141, 255, 255, 255), backgroundColor);
      }
      return backgroundColor;
    }

    RoundedRectangleBorder? assignShape(Set<MaterialState> states) {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
            width: 0.75,
            style: BorderStyle.solid,
            color: Colors.black,
            strokeAlign: StrokeAlign.center),
      );
    }

    return Container(
      padding: EdgeInsets.only(top: offsetTop),
      child: TextButton(
        onPressed: () {
          if (text == 'Login') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LoginScreen();
                },
              ),
            );
          } else if (text == 'Register') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const RegisterPage();
                },
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LoggedInPage();
                },
              ),
            );
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(assignColor),
          shape: MaterialStateProperty.resolveWith(assignShape),
        ),
        child: SizedBox(
            width: 320,
            height: 50,
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
      ),
    );
  }
}
