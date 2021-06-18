import 'package:flutter/material.dart';
import 'package:jasiri_pay/src/config/size_config.dart';
import 'package:jasiri_pay/src/core/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
