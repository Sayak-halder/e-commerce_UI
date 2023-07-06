import 'package:flutter/material.dart';
import 'package:e_mart/screen/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
