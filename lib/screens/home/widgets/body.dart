import 'package:first_app/screens/home/widgets/banner_discount.dart';
import 'package:first_app/screens/home/widgets/categories.dart';
import 'package:first_app/screens/home/widgets/home_header.dart';
import 'package:first_app/screens/home/widgets/popular_product.dart';
import 'package:first_app/screens/home/widgets/special_offers.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(10)),
            BannerDiscount(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProduct(),
          ],
        ),
      ),
    );
  }
}
