import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardSocial extends StatelessWidget {
  final String icon;
  final VoidCallback? onPress;

  const CardSocial({Key? key, required this.icon, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
      ),
      padding: EdgeInsets.all(
        getProportionateScreenWidth(12),
      ),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: kBgWhiteColor,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
