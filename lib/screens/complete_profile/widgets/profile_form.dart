import 'package:first_app/screens/otp/otp_screen.dart';
import 'package:first_app/utils/constants.dart';
import 'package:first_app/utils/size_config.dart';
import 'package:first_app/widgets/custom_suffix_icon.dart';
import 'package:first_app/widgets/default_button.dart';
import 'package:first_app/widgets/form_error.dart';
import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({Key? key}) : super(key: key);

  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? _firstName;
  String? _lastName;
  String? _phoneNumber;
  String? _address;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            _buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            _buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            _buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            _buildAddressFormField(),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
              text: 'Continue',
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, OTPScreen.routeName);
                }
              },
            ),
          ],
        ));
  }

  TextFormField _buildAddressFormField() {
    return TextFormField(
      onSaved: (value) => _address = value,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        suffixIcon: CustomSuffixIcon(svgIcon: kIconLocation),
      ),
    );
  }

  TextFormField _buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (value) => _phoneNumber = value,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Phone number',
        hintText: 'Enter your phone number',
        suffixIcon: CustomSuffixIcon(svgIcon: kIconPhone),
      ),
    );
  }

  TextFormField _buildLastNameFormField() {
    return TextFormField(
      onSaved: (value) => _lastName = value,
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        suffixIcon: CustomSuffixIcon(svgIcon: kIconUser),
      ),
    );
  }

  TextFormField _buildFirstNameFormField() {
    return TextFormField(
      onSaved: (value) => _firstName = value,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNameNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        suffixIcon: CustomSuffixIcon(
          svgIcon: kIconUser,
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
