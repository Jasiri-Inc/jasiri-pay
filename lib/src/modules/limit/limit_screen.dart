import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/constants/enums.dart';
import 'package:lipa_rahaa/src/widgets/bottom_nav_bar.dart';


import 'components/body.dart';

class LimitScreen extends StatelessWidget {
  static String routeName = "/limit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Body(),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedMenu: MenuState.limit,
      ),
    );
  }
}
