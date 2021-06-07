import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/widgets/bottom_nav_bar.dart';
import 'package:lipa_rahaa/src/constants/enums.dart';

import 'components/body.dart';


class MoneyBoxScreen extends StatelessWidget {
 static String routeName = "/moneybox";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    body: Body(),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedMenu: MenuState.moneybox,
      ),
    );
  }
}
