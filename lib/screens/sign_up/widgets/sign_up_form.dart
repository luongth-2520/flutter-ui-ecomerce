import 'package:first_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/custom_suffix_icon.dart';
import 'package:first_app/widgets/default_button.dart';
import 'package:first_app/widgets/form_error.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? _email;
  String? _password;
  String? _confirmPassword;
  bool? remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          _buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          _buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: 'Continue',
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField _buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => _password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (value.length < 8) {
          removeError(error: kShortPassError);
        }
        _password = value;
        return null;
      },
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            addError(error: kPassNullError);
            return '';
          } else if (value.length < 8) {
            addError(error: kShortPassError);
            return '';
          }
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: kIconLock,
        ),
      ),
    );
  }

  TextFormField _buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => _confirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (_password == value) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            addError(error: kPassNullError);
            return '';
          } else if (value != _password) {
            addError(error: kMatchPassError);
            return '';
          }
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: kIconLock,
        ),
      ),
    );
  }

  TextFormField _buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) {
        _email = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        }
        if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            addError(error: kEmailNullError);
            return '';
          } else if (!emailValidatorRegExp.hasMatch(value)) {
            addError(error: kInvalidEmailError);
            return '';
          }
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: kIconEmail,
        ),
      ),
    );
  }

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }
}
