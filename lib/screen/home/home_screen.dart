import 'package:e_mart/enums.dart';
import 'package:e_mart/screen/profile/components/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavBar(selectionmenu: MenuState.home),
    );
  }
}
