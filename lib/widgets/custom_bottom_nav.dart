import 'package:first_app/models/menu_state.dart';
import 'package:first_app/screens/home/home_screen.dart';
import 'package:first_app/screens/profile/profile_screen.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNav extends StatelessWidget {
  final MenuState selectedMenu;

  const CustomBottomNav({Key? key, required this.selectedMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(14),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: getProportionateScreenWidth(20),
            color: kBottomNavBoxShadowColor.withOpacity(0.35),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getProportionateScreenWidth(40),
          ),
          topRight: Radius.circular(
            getProportionateScreenWidth(40),
          ),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                kIconShop,
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : kInActiveBottomNavColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
            IconButton(
              icon: SvgPicture.asset(kIconHeart),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(kIconChat),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                kIconProfile,
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : kInActiveBottomNavColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
