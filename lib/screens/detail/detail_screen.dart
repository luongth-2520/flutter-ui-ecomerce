import 'package:first_app/models/product.dart';
import 'package:first_app/screens/detail/widgets/body.dart';
import 'package:first_app/screens/detail/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/details';

  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailArguments;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: args.product.rating),
      ),
      body: DetailProductBody(product: args.product),
    );
  }
}

class ProductDetailArguments {
  final Product product;

  const ProductDetailArguments({required this.product});
}
