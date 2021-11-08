import 'package:first_app/screens/cart/cart_screen.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/icon_button_counter.dart';
import 'package:first_app/widgets/search_field.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonCounter(
              iconSrc: kIconCart,
              onTap: () => Navigator.pushNamed(context, CartScreen.routeName)),
          IconButtonCounter(iconSrc: kIconBell, counter: 8, onTap: () {}),
        ],
      ),
    );
  }
}
