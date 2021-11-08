import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class BannerDiscount extends StatelessWidget {
  const BannerDiscount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
          color: kBannerColor,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(20))),
      child: Text.rich(
        TextSpan(style: TextStyle(color: Colors.white), children: [
          TextSpan(text: 'A Winter Surprise \n'),
          TextSpan(
            text: 'Cashback 20%',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
