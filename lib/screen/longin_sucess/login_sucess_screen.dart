import 'package:flutter/material.dart';
import 'package:e_mart/screen/longin_sucess/components/body.dart';

class LoginSucessScreen extends StatelessWidget {
  const LoginSucessScreen({super.key});
  static String routeName = "/login_sucess";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: const Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
