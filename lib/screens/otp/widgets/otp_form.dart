import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/default_button.dart';
import 'package:flutter/material.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode? pin2FcNode, pin3FcNode, pin4FcNode;
  TextEditingController? controller1, controller2, controller3, controller4;

  @override
  void initState() {
    super.initState();
    pin2FcNode = FocusNode();
    pin3FcNode = FocusNode();
    pin4FcNode = FocusNode();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FcNode!.dispose();
    pin3FcNode!.dispose();
    pin4FcNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildItemPin(controller1, null, pin2FcNode),
                _buildItemPin(controller2, pin2FcNode, pin3FcNode),
                _buildItemPin(controller3, pin3FcNode, pin4FcNode),
                _buildItemPin(controller4, pin4FcNode, null, isAutoUnFocus: true),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: "Continue",
            onPress: () {},
          )
        ],
      ),
    );
  }

  Widget _buildItemPin(TextEditingController? controller, FocusNode? fcNode,
      FocusNode? nextFcNode,
      {bool isAutoUnFocus = false}) {
    return SizedBox(
      width: getProportionateScreenWidth(60),
      child: TextFormField(
        maxLength: 1,
        controller: controller,
        autofocus: fcNode == null,
        focusNode: fcNode,
        // obscureText: true,
        style: TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: otpInputDecoration,
        onChanged: (value) {
          if (isAutoUnFocus) {
            fcNode!.unfocus();
          } else {
            nextField(value, nextFcNode);
          }
        },
      ),
    );
  }

  nextField(String value, FocusNode? fcNode) {
    if (value.length == 1) {
      fcNode!.requestFocus();
    }
  }
}
