import 'package:e_mart/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBin extends StatelessWidget {
  const RoundedIconBin({
    super.key,
    required this.icondata,
    required this.press,
  });
  final IconData icondata;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        style: flatButtonStyle,
        child: Icon(icondata),
        onPressed: press,
      ),
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: Colors.white,
  padding: EdgeInsets.zero,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
);
