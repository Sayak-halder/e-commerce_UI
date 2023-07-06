import 'package:e_mart/model/product.dart';
import 'package:e_mart/screen/details/detail_screen.dart';
import 'package:e_mart/screen/home/components/product_card.dart';
import 'package:e_mart/screen/home/components/section_title.dart';
import 'package:e_mart/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popuplar Product",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routName,
                    arguments:
                        ProductDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
