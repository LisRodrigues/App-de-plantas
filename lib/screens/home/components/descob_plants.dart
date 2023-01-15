// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';

class DescbPlants extends StatelessWidget {
  const DescbPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          DescPlantsCards(
            image: "assets/images/bottom_img_1.png",
          ),
          DescPlantsCards(
            image: "assets/images/bottom_img_2.png",
          ),
        ],
      ),
    );
  }
}

class DescPlantsCards extends StatelessWidget {
  const DescPlantsCards({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 105,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
