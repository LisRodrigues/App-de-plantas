// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding),
      height: 88,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.20))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star,
                color: kPrimaryColor,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
                color: Colors.grey,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 30,
              ))
        ],
      ),
    );
  }
}
