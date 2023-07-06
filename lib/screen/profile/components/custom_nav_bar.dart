import 'package:e_mart/constants.dart';
import 'package:e_mart/enums.dart';
import 'package:e_mart/screen/home/home_screen.dart';
import 'package:e_mart/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.selectionmenu,
  });
  final MenuState selectionmenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB68686);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADDA).withOpacity(0.15),
            )
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeScreen.routName),
          icon: SvgPicture.asset(
            "assets/icons/Shop Icon.svg",
            color: MenuState.home == selectionmenu
                ? kPrimaryColor
                : inActiveIconColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/Heart Icon.svg",
            color: MenuState.favourite == selectionmenu
                ? kPrimaryColor
                : inActiveIconColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/Chat bubble Icon.svg",
            color: MenuState.message == selectionmenu
                ? kPrimaryColor
                : inActiveIconColor,
          ),
        ),
        IconButton(
          onPressed: () =>
              Navigator.pushNamed(context, ProfileScreen.routeName),
          icon: SvgPicture.asset(
            "assets/icons/User Icon.svg",
            color: MenuState.profile == selectionmenu
                ? kPrimaryColor
                : inActiveIconColor,
          ),
        ),
      ]),
    );
  }
}
