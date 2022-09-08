import 'dart:developer';

import 'package:flutter/material.dart';

class MyApppBar extends StatelessWidget {
  const MyApppBar({Key? key, this.scroolOffSet = 0.0}) : super(key: key);

  final double scroolOffSet;

  @override
  Widget build(BuildContext context) {
    var dotItems = <String>["FAQs", "HELP"];
    
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      color:
          Colors.black.withOpacity((scroolOffSet / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(
              "assets/images/netflix_logo0.png",
            ),
            SizedBox(
              width: 100,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton_(
                      title: "PRIVACY ",
                      onTap: () {
                        print("Privacy got tapped.");
                      }),
                  _AppBarButton_(
                      title: "SIGN IN",
                      onTap: () {
                        log("SignIn got tapped.");
                      }),
                ],
              ),
            ),
            PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
              itemBuilder: (BuildContext context) {
                return dotItems.map((String items) {
                  return PopupMenuItem<String>(
                    child: Text(items),
                    value: items,
                  );
                }).toList();
              },
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton_ extends StatelessWidget {
  const _AppBarButton_({Key? key, required this.title, required this.onTap})
      : super(key: key);

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Text(title,
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600)),
    );
  }
}
