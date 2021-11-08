import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;

  const TitleSection({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.black),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'See more',
            style: TextStyle(color: kSeeMoreTextColor),
          ),
        )
      ],
    );
  }
}
