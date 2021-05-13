import 'package:flutter/material.dart';
import 'package:lipa_rahaa/constants.dart';
import 'package:lipa_rahaa/screens/details/components/app_bar.dart';
import 'package:lipa_rahaa/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}
