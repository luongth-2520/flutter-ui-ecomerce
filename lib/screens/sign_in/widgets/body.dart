import 'package:first_app/screens/sign_in/widgets/sign_in_form.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/card_social.dart';
import 'package:first_app/widgets/text_no_account.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign in with your email and password  \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              SignInForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardSocial(icon: kIconGoogle, onPress: () {}),
                  CardSocial(icon: kIconFb, onPress: () {}),
                  CardSocial(icon: kIconTwitter, onPress: () {}),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(16)),
              TextNoAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
