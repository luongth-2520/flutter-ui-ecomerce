import 'package:first_app/models/product.dart';
import 'package:first_app/screens/detail/detail_screen.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardProduct extends StatelessWidget {
  final double width, ratio;
  final Product product;

  const CardProduct(
      {Key? key, this.width = 140, this.ratio = 1.02, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(DetailScreen.routeName,
              arguments: ProductDetailArguments(product: product));
        },
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: ratio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.images[0]),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                      getProportionateScreenWidth(8),
                    ),
                    height: getProportionateScreenWidth(28),
                    width: getProportionateScreenWidth(28),
                    child: SvgPicture.asset(
                      kIconHeart2,
                      color: product.isFavourite ? kRedColor : kUnFavColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
