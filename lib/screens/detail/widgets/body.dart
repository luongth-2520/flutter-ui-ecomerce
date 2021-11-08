import 'package:first_app/models/product.dart';
import 'package:first_app/screens/detail/widgets/images_show.dart';
import 'package:first_app/screens/detail/widgets/product_description.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/color_dots.dart';
import 'package:first_app/widgets/default_button.dart';
import 'package:first_app/widgets/top_rounded_container.dart';
import 'package:flutter/material.dart';

class DetailProductBody extends StatelessWidget {
  final Product product;

  const DetailProductBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ImagesShow(product: product),
        TopRoundedContainer(
          bgColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductDescription(product: product),
              TopRoundedContainer(
                bgColor: kBgBottomDetail,
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      bgColor: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          SizeConfig.screenWidth * 0.15,
                          getProportionateScreenWidth(15),
                          SizeConfig.screenWidth * 0.15,
                          getProportionateScreenWidth(40),
                        ),
                        child: DefaultButton(
                          text: 'Add To Cart',
                          onPress: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
