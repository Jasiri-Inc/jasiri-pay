import 'package:flutter/widgets.dart';
import 'package:lipa_rahaa/src/modules/home/home-screen.dart';
import 'package:lipa_rahaa/src/modules/limit/limit_screen.dart';
import 'package:lipa_rahaa/src/modules/moneybox/moneybox_screen.dart';
import 'package:lipa_rahaa/src/modules/profile/profile_screen.dart';
import 'package:lipa_rahaa/src/core/auth/sign_in/sign_in_screen.dart';
import 'package:lipa_rahaa/src/core/auth/sign_up/sign_up_screen.dart';
// import 'package:lipa_rahaa/src/core/profile/complete_profile_screen.dart';
// import 'package:lipa_rahaa/src/modules/details/details_screen.dart';
// import 'package:lipa_rahaa/screens/cart/cart_screen.dart';
// import 'package:lipa_rahaa/src/core/profile/complete_profile_screen.dart';
// import 'package:lipa_rahaa/screens/forgot_password/forgot_password_screen.dart';
// import 'package:lipa_rahaa/screens/otp/otp_screen.dart';
// import 'package:lipa_rahaa/screens/sign_in/sign_in_screen.dart';
// import 'package:lipa_rahaa/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  MoneyBoxScreen.routeName: (context) => MoneyBoxScreen(),
  LimitScreen.routeName: (context) => LimitScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // SplashScreen.routeName: (context) => SplashScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
};
