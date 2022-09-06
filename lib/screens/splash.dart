import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Center(
          child: Image.asset(
            "assets/images/netflix_logo1.png",
            height: 60,
            width: 200,
          ),
        ));
  }
}