import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/constants/enums.dart';
import 'package:lipa_rahaa/src/widgets/bottom_nav_bar.dart';

import './components/app_bar.dart';
import './components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: homeAppBar(context),
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedMenu: MenuState.home,
        ),
        body: Body(),
      ),
    );
  }
}
