import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CardSpecialOffer extends StatelessWidget {
  final String category, image;
  final int numOfBrands;
  final GestureTapCallback onTap;

  const CardSpecialOffer(
      {Key? key,
      required this.category,
      required this.image,
      required this.numOfBrands,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        height: getProportionateScreenWidth(100),
        width: getProportionateScreenWidth(242),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF343434).withOpacity(0.4),
                    Color(0xFF343434).withOpacity(0.15),
                  ],
                )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10)),
                child: Text.rich(
                  TextSpan(style: TextStyle(color: Colors.white), children: [
                    TextSpan(
                      text: '$category\n',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '$numOfBrands Brands')
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
