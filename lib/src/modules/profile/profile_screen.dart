import 'package:flutter/material.dart';
import 'package:jasiri_pay/src/constants/enums.dart';
import 'package:jasiri_pay/src/widgets/bottom_nav_bar.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text("Profile"),
          ),
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavigationBar(selectedMenu: MenuState.profile),
    );
  }
}
