import 'package:first_app/models/product.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/card_product.dart';
import 'package:first_app/widgets/section_title.dart';
import 'package:flutter/material.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: TitleSection(
            title: 'Popular Products',
            onTap: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(demoProducts.length, (index) {
              if (demoProducts[index].isPopular)
                return CardProduct(product: demoProducts[index]);
              else
                return SizedBox.shrink();
            }),
          ),
        ),
      ],
    );
  }
}
