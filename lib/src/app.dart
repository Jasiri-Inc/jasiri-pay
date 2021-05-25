import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/constants/constants.dart';
import 'package:lipa_rahaa/src/modules/home/home-screen.dart';
import 'package:lipa_rahaa/src/config/routes/routes_config.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kSecondaryColor),
          bodyText1: TextStyle(color: kSecondaryColor),
        ),
      ),
      home: HomeScreen(),
      routes: routes ,
    );
  }
}
