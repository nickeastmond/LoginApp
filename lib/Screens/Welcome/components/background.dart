import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Container(
      constraints: const BoxConstraints.expand(),
      height: size.height,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            width: size.width,
            height: size.height,
            child: Image.asset(
              "assets/images/img.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: size.height / 3,
            width: size.width,
            height: size.width,
            child: Image.asset("assets/icons/Branding.png"),
          ),
          child,
        ],
      ),
    );
  }
}
