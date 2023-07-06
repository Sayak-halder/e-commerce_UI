import 'package:e_mart/screen/home/components/categories.dart';
import 'package:e_mart/screen/home/components/discount_banner.dart';
import 'package:e_mart/screen/home/components/home_header.dart';
import 'package:e_mart/screen/home/components/popular_products.dart';
import 'package:e_mart/screen/home/components/special_offer.dart';
import 'package:e_mart/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
