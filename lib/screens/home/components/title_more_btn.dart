// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          TitleWithCustomUnderLine(text: title),
          Spacer(),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              onPressed: () {},
              child: Text(
                "Mais",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      // ignore: prefer_const_literals_to_create_immutables
      child: Stack(children: <Widget>[
        //usado para sobrepor widget
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        //
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(right: kDefaultPadding / 4),
            height: 7,
            color: kPrimaryColor.withOpacity(0.2),
          ),
        )
      ]),
    );
  }
}
