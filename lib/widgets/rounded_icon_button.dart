import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback onPress;
  final bool isShowShadow;

  const RoundedIconButton(
      {Key? key,
      required this.icon,
      required this.onPress,
      this.isShowShadow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenHeight(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (isShowShadow)
            BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 10,
              color: kShadowColor.withOpacity(0.2),
            ),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: kPrimaryColor,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: onPress,
        child: Icon(icon),
      ),
    );
  }
}
