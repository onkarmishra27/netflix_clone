import 'package:flutter/material.dart';

class ReadyToWatch extends StatefulWidget {
  const ReadyToWatch({Key? key}) : super(key: key);

  @override
  State<ReadyToWatch> createState() => _ReadyToWatchState();
}

class _ReadyToWatchState extends State<ReadyToWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Ready to watch?",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(
            height: 10,
          ),
          Text("Enter your email to create or sign in to\n your account.",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
