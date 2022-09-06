import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
      new Future.delayed(const Duration(seconds: 2), () {
        Navigator.pop(context, true);
        Navigator.pushNamed(context, '/getStarted');
      });
  }

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
