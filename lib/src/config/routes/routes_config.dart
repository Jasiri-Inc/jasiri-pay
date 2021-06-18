import 'package:flutter/widgets.dart';
import 'package:jasiri_pay/src/core/auth/screens/forgot_password/forgot_password_screen.dart';
import 'package:jasiri_pay/src/core/auth/screens/login_success/login_success_screen.dart';
import 'package:jasiri_pay/src/core/auth/screens/otp/otp_screen.dart';
import 'package:jasiri_pay/src/core/auth/screens/sign_in/sign_in_screen.dart';
import 'package:jasiri_pay/src/core/auth/screens/sign_up/sign_up_screen.dart';
import 'package:jasiri_pay/src/core/splash/splash_screen.dart';
import 'package:jasiri_pay/src/modules/home/screens/home-screen.dart';
import 'package:jasiri_pay/src/modules/limit/screens/limit_screen.dart';
import 'package:jasiri_pay/src/modules/moneybox/screens/moneybox_screen.dart';
import 'package:jasiri_pay/src/modules/profile/profile_screen.dart';

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
