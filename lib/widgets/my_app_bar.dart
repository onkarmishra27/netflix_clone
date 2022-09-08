import 'dart:developer';

import 'package:flutter/material.dart';

class MyApppBar extends StatelessWidget {
  MyApppBar({
    Key? key,
    this.scroolOffSet = 0.0,
    required this.dotItems,
  }) : super(key: key);

  final double scroolOffSet;
  var dotItems = <String>[];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black.withOpacity(
        (scroolOffSet / 350).clamp(0, 1).toDouble(),
      ),
      actions: [
        Image.asset(
          "assets/images/netflix_logo0.png",
        ),
        SizedBox(
          width: 80,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black.withOpacity(
                      (scroolOffSet / 350).clamp(0, 1).toDouble(),
                    ), // background
                    onPrimary: Colors.white // foreground
                    ),
                onPressed: () {
                  log("PRIVACY got tapped");
                },
                child: Text(
                  "PRIVACY",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black.withOpacity(
                      (scroolOffSet / 350).clamp(0, 1).toDouble(),
                    ), // background
                    onPrimary: Colors.white // foreground
                    ),
                onPressed: () {
                  log("SIGN IN got tapped");
                },
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (dotItems.isNotEmpty)
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
