import 'package:flutter/material.dart';

import 'screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => Splash(),
        // '/login': (context) => Login(),
        // '/home': (context) => Home(),
        // '/verify': (context) => Verify(),
        // '/details': (context) => Details(),
        // '/refer': (context) => Refer(),
        // '/payment': (context) => Payment(),
        // '/addcard': (context) => AddCard(),
        // '/ride_history': (context) => RideHistory(),
        // '/about': (context) => About(),
        // '/help': (context) => Help(),
        // '/notification': (context) => Notifications(),
        // '/rewards': (context) => Rewards(),
        // '/profile': (context) => Profile(),
        // '/ride_complete': (context) => Ride_Complete(),
        // '/ride': (context) => Ride(),
        // '/favourites': (context) => Favourites(),
        // '/search_driver': (context) => SearchingDriver(),
        // '/faq': (context) => Faq(),
        // '/outstanding': (context) => OutStandingPayment(),
      },
    );
  }
}