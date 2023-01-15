// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';
import 'package:projectp/screens/home/components/descob_plants.dart';
import 'package:projectp/screens/home/components/header_with_search.dart';
import 'package:projectp/screens/home/components/recomends_plants.dart';
import 'package:projectp/screens/home/components/title_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // Ele nos proporcionará altura total e largura de nossa tela

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomendado"),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Descubra novas plantas"),
          DescbPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
