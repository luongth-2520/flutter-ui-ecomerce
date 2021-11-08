import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/card_special_offer.dart';
import 'package:first_app/widgets/section_title.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: TitleSection(
            title: 'Special for you',
            onTap: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardSpecialOffer(
                  category: 'Smartphone',
                  image: kImageOffer1,
                  numOfBrands: 18,
                  onTap: () {}),
              CardSpecialOffer(
                  category: 'Fashion',
                  image: kImageOffer2,
                  numOfBrands: 24,
                  onTap: () {}),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
