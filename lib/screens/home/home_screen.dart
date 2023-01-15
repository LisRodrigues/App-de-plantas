// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectp/componentes/my_button_bav_bar.dart';
import 'package:projectp/constants.dart';
import 'package:projectp/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
  );
}
