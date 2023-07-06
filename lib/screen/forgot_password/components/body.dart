import 'package:e_mart/components/default_button.dart';
import 'package:e_mart/constants.dart';
import 'package:e_mart/screen/sign_in/components/custom_suffix_icons.dart';
import 'package:e_mart/screen/sign_in/components/form_error.dart';
import 'package:e_mart/screen/sign_in/components/no_account_text.dart';
import 'package:e_mart/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            Text(
              "Forgot Password",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Please enter your email and we will send \nyou a link to return to your account",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            ForgotPassForm(),
          ],
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formkey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue!,
              onChanged: (value) {
                if (value.isEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Enter Your Email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffix(
                  svgIcon: "assets/icons/Mail.svg",
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            FormError(errors: errors),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formkey.currentState!.validate()) {
                  //email otp check
                }
              },
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            NoAccountText(),
          ],
        ));
  }
}
