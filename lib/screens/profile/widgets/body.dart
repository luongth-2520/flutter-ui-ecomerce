import 'package:first_app/screens/profile/widgets/item_menu.dart';
import 'package:first_app/screens/profile/widgets/profile_pic.dart';
import 'package:first_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ItemMenu(
            text: 'My Account',
            icon: kIconProfile,
            onPress: () => {},
          ),
          ItemMenu(
            text: 'Notifications',
            icon: kIconBell,
            onPress: () => {},
          ),
          ItemMenu(
            text: 'Settings',
            icon: kIconSettings,
            onPress: () => {},
          ),
          ItemMenu(
            text: 'Help Center',
            icon: kIconQuestionMark,
            onPress: () => {},
          ),
          ItemMenu(
            text: 'Log Out',
            icon: kIconLogOut,
            onPress: () => {},
          ),
        ],
      ),
    );
  }
}
