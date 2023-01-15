// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.icons,
  });
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 21,
              color: kPrimaryColor.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            )
          ]),
      child: Icon(
        icons,
        color: kPrimaryColor,
        size: 38,
      ),
    );
  }
}
