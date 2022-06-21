import 'package:flutter/material.dart';
import 'package:login_app/Screens/Welcome/components/welcome_page_body.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const Scaffold(
      body: Body(),
    );
  }
}
