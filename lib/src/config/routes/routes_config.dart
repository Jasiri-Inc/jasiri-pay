import 'package:flutter/widgets.dart';
import 'package:lipa_rahaa/src/core/auth/screens/forgot_password/forgot_password_screen.dart';
import 'package:lipa_rahaa/src/core/auth/screens/login_success/login_success_screen.dart';
import 'package:lipa_rahaa/src/core/auth/screens/otp/otp_screen.dart';
import 'package:lipa_rahaa/src/core/auth/screens/sign_in/sign_in_screen.dart';
import 'package:lipa_rahaa/src/core/auth/screens/sign_up/sign_up_screen.dart';
import 'package:lipa_rahaa/src/core/splash/splash_screen.dart';
import 'package:lipa_rahaa/src/modules/home/screens/home-screen.dart';
import 'package:lipa_rahaa/src/modules/limit/screens/limit_screen.dart';
import 'package:lipa_rahaa/src/modules/moneybox/screens/moneybox_screen.dart';
import 'package:lipa_rahaa/src/modules/profile/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  MoneyBoxScreen.routeName: (context) => MoneyBoxScreen(),
  LimitScreen.routeName: (context) => LimitScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
