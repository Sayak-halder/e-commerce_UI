import 'package:e_mart/model/product.dart';
import 'package:e_mart/screen/details/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/screen/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
