// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';
import 'package:projectp/screens/detals/detals_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          RecomendPlantaCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 40,
          ),
          RecomendPlantaCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 40,
          ),
          RecomendPlantaCard(
            image: "assets/images/image_3.png",
            title: "Luiza",
            country: "Russia",
            price: 40,
          ),
        ],
      ),
    );
  }
}

class RecomendPlantaCard extends StatelessWidget {
  const RecomendPlantaCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  });

  final String image, title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      //margin adiciona uma margem dentro de um container
      //Se fosse EdgeInsets.all, coloca a mesma margem para todas as bordas
      //EdgeInsets é usado para deslocar os 4 cantos de uma caixa em termos de bordas visuais
      //EdgeInsets.all =Margem típica de oito pixels em todos os lados || EdgeInsets.symmetric(vertical: 8.0)=Margem de oito pixels acima e abaixo, sem margens horizontais  || EdgeInsets.only(left: 40.0) =Recuo da margem esquerda de 40 pixels
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: <Widget>[
        Image.asset(image),
        GestureDetector(
          //detecta gestos
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => DetailsScreen())));
          },
          child: Container(
            //faz um espaço ao redos de qualquer ou de todos os filhos
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      //dar sombra na caixa
                      offset: Offset(0, 10), //deslocamento da sombra em x e y
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]),
            child: Row(children: <Widget>[
              RichText(
                  //arvore de textos com vários estilos diferentes
                  text: TextSpan(children: [
                TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.labelLarge),
                TextSpan(
                    text: "$country".toUpperCase(),
                    style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
              ])),
              Spacer(),
              Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: kPrimaryColor),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
