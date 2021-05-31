import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/constants/constants.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
