import 'package:e_mart/screen/cart/cart_screen.dart';
import 'package:e_mart/screen/complete_profile/complete_profile_screen.dart';
import 'package:e_mart/screen/details/detail_screen.dart';
import 'package:e_mart/screen/forgot_password/forgot_password.dart';
import 'package:e_mart/screen/home/home_screen.dart';
import 'package:e_mart/screen/longin_sucess/login_sucess_screen.dart';
import 'package:e_mart/screen/otp/otp_screen.dart';
import 'package:e_mart/screen/profile/profile_screen.dart';
import 'package:e_mart/screen/sign_in/signin_screen.dart';
import 'package:e_mart/screen/sign_up/sign_up_screen.dart';
import 'package:e_mart/screen/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSucessScreen.routeName: (context) => LoginSucessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  DetailsScreen.routName: (context) => DetailsScreen(),
  HomeScreen.routName: (context) => HomeScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
