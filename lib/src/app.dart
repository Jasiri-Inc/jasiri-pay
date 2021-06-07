import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/constants/constants.dart';
import 'package:lipa_rahaa/src/core/auth/repositories/user.dart';
import 'package:lipa_rahaa/src/core/splash/splash_screen.dart';
import 'package:lipa_rahaa/src/config/routes/routes_config.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (_) => AuthProvider())], child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        fontFamily: 'Inter',
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kSecondaryColor),
          bodyText1: TextStyle(color: kSecondaryColor),
        ),
      ),
      // home: HomeScreen(),
      home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    ));
  }
}
