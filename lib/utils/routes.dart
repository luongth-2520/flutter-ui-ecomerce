import 'package:first_app/screens/cart/cart_screen.dart';
import 'package:first_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:first_app/screens/detail/detail_screen.dart';
import 'package:first_app/screens/home/home_screen.dart';
import 'package:first_app/screens/login_success/login_success_screen.dart';
import 'package:first_app/screens/otp/otp_screen.dart';
import 'package:first_app/screens/profile/profile_screen.dart';
import 'package:first_app/screens/sign_in/sign_in_screen.dart';
import 'package:first_app/screens/sign_up/sign_up_screen.dart';
import 'package:first_app/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
