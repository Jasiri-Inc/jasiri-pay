import 'package:flutter/material.dart';
import 'package:jasiri_pay/src/config/size_config.dart';
import 'package:jasiri_pay/src/constants/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(36)),
            children: [
              TextSpan(
                text: "Jasiri",
                style: TextStyle(color: kSecondaryColor),
              ),
              TextSpan(
                text: "Pay",
                style: TextStyle(color: kPrimaryColor),
              ),
            ],
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
