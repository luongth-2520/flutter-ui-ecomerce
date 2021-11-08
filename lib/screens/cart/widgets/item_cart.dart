import 'package:first_app/models/cart.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  final Cart cart;

  const ItemCart({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(
                getProportionateScreenWidth(10),
              ),
              decoration: BoxDecoration(
                color: kBgWhiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                  text: '\$${cart.product.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                  children: [
                    TextSpan(
                        text: ' x${cart.numOfItem}',
                        style: Theme.of(context).textTheme.bodyText1),
                  ]),
            ),
          ],
        )
      ],
    );
  }
}
