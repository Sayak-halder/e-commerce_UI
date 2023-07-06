import 'package:e_mart/enums.dart';
import 'package:e_mart/screen/profile/components/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/screen/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomNavBar(
        selectionmenu: MenuState.profile,
      ),
    );
  }
}
