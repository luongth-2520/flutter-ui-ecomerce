import 'package:first_app/models/menu_state.dart';
import 'package:first_app/screens/home/widgets/body.dart';
import 'package:first_app/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.home),
    );
  }
}
