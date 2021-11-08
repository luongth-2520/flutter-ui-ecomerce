import 'package:first_app/screens/otp/widgets/otp_form.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            Text('OTP Verification', style: headingStyle),
            Text('"We sent your code to +1 898 860 ***'),
            _buildTimer(),
            OTPForm(),
          ],
        ),
      ),
    );
  }

  Row _buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            '00:${value.toInt().toString().padLeft(2, '0')}',
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
