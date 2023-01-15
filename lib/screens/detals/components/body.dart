// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';
import 'package:projectp/screens/detals/components/image_icons.dart';
import 'package:projectp/screens/detals/components/titulo_e_preco.dart';

class Body_Two extends StatelessWidget {
  const Body_Two({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TituloePreco(
            title: "Angélica",
            country: "Russia",
            price: 40,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          kPrimaryColor,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20))))),
                    onPressed: () {},
                    child: Text(
                      "Comprar agora",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  "Descrição",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
