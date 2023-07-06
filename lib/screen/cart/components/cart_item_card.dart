import 'package:e_mart/constants.dart';
import 'package:e_mart/model/cart.dart';
import 'package:e_mart/size_config.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cart,
  });
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xFFF5F6F9),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "₹" + cart.product.price.toString().trim(),
                style: const TextStyle(
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(text: " x ${cart.numOfItem}"),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
