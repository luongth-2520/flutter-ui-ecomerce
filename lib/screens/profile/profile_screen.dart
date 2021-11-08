import 'package:first_app/models/menu_state.dart';
import 'package:first_app/screens/profile/widgets/body.dart';
import 'package:first_app/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ProfileBody(),
      bottomNavigationBar: CustomBottomNav(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
