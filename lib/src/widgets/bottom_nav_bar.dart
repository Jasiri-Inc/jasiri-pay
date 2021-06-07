import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lipa_rahaa/src/constants/constants.dart';
import 'package:lipa_rahaa/src/constants/enums.dart';
import 'package:lipa_rahaa/src/modules/home/screens/home-screen.dart';
import 'package:lipa_rahaa/src/modules/limit/screens/limit_screen.dart';
import 'package:lipa_rahaa/src/modules/moneybox/screens/moneybox_screen.dart';
import 'package:lipa_rahaa/src/modules/profile/profile_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final Color isActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == widget.selectedMenu
                    ? kPrimaryColor
                    : isActiveIconColor,
              ),
              onPressed: () =>
                  // Navigator.pushNamed(context, HomeScreen.routeName),
                  Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => HomeScreen(),
                  transitionDuration: Duration(seconds: 0),
                ),
              ),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/heart-box.svg",
                color: MenuState.moneybox == widget.selectedMenu
                    ? kPrimaryColor
                    : isActiveIconColor,
              ),
              onPressed: () =>
                  // Navigator.pushNamed(context, MoneyBoxScreen.routeName),
                  Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => MoneyBoxScreen(),
                  transitionDuration: Duration(seconds: 0),
                ),
              ),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/limit.svg",
                color: MenuState.limit == widget.selectedMenu
                    ? kPrimaryColor
                    : isActiveIconColor,
              ),
              onPressed: () =>
                  // Navigator.pushNamed(context, LimitScreen.routeName),
                  Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => LimitScreen(),
                  transitionDuration: Duration(seconds: 0),
                ),
              ),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == widget.selectedMenu
                    ? kPrimaryColor
                    : isActiveIconColor,
              ),
              onPressed: () =>
                  // Navigator.pushNamed(context, ProfileScreen.routeName),

                  Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => ProfileScreen(),
                  transitionDuration: Duration(seconds: 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
