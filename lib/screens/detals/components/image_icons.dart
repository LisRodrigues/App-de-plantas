// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';
import 'package:projectp/screens/detals/components/icon_cart.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ),
                  Spacer(),
                  IconCard(
                    icons: Icons.wb_sunny_outlined,
                  ),
                  IconCard(
                    icons: Icons.device_thermostat,
                  ),
                  IconCard(
                    icons: Icons.water_drop_outlined,
                  ),
                  IconCard(
                    icons: Icons.air_outlined,
                  ),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img.png"))),
            ),
          ],
        ),
      ),
    );
  }
}
