import 'package:flutter/material.dart';
import 'package:jasiri_pay/src/config/routes/routes_config.dart';
import 'package:jasiri_pay/src/constants/constants.dart';
import 'package:jasiri_pay/src/core/auth/repositories/user.dart';
import 'package:jasiri_pay/src/core/splash/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthProvider()),
          ChangeNotifierProvider(create: (_) => UserProvider())
        ],
        child: MaterialApp(
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
