// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectp/constants.dart';
import 'package:projectp/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //Retirar a indicação de "DEBUG", do canto da tela
      title: 'App Plantinhas',
      theme: ThemeData(
        scaffoldBackgroundColor:
            kBackgroundColor, //cor de plano de fundo padrão da página do aplicativo
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity:
            VisualDensity.adaptivePlatformDensity, //retorna um visual adaptável
      ),
      home: HomeScreen(),
    );
  }
}
