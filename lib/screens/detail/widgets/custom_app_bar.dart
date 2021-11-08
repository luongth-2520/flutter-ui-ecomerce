import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  const CustomAppBar({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    backgroundColor: kBgWhiteColor,
                    primary: kPrimaryColor,
                    padding: EdgeInsets.zero),
                onPressed: () => Navigator.pop(context),
                child: SvgPicture.asset(kIconBack, height: 15),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: kBgWhiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    '$rating',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset(kIconStar),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
