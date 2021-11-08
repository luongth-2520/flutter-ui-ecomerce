import 'package:first_app/models/product.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/color_dot.dart';
import 'package:first_app/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  final Product product;

  const ColorDots({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: index == selectedColor,
            ),
          ),
          Spacer(),
          RoundedIconButton(icon: Icons.remove, onPress: () {}),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          RoundedIconButton(icon: Icons.add, onPress: () {}),
        ],
      ),
    );
  }
}
