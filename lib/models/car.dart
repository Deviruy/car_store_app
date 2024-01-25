import 'package:car_store_app/colors.dart';
import 'package:flutter/material.dart';

class Car {
  final String nome;
  final String tipo;
  final List<String> imagem;
  final String preco;
  final List<Color> colors;
  bool isFavorite;

  Car(
      {required this.nome,
      required this.imagem,
      required this.colors,
      required this.preco,
      required this.tipo,
      this.isFavorite = false});
}

List<Car> carros = [
  Car(
      colors: [yellowPrimary, yellowSec],
      nome: "Model S",
      tipo: "Ludicrous Mode",
      preco: '\$99,000',
      imagem: ['assets/b1.png', 'assets/b1.png', 'assets/c1.png']),
  Car(
      colors: [blackSec, blackPrimary],
      nome: "Model 3",
      tipo: "Performance",
      preco: '\$99,000',
      imagem: ['assets/b2.png', 'assets/b2.png', 'assets/c2.png']),
  Car(
      colors: [blueSec, bluePrimary],
      nome: "Model X",
      tipo: "Ludicrous Mode",
      preco: '\$46,999',
      imagem: ['assets/b3.png', 'assets/b3.png', 'assets/c3.png']),
  Car(
      colors: [blueSec, bluePrimary],
      nome: "Model Y",
      tipo: "Ludicrous Mode",
      preco: '\$46,999',
      imagem: ['assets/b3.png', 'assets/b3.png', 'assets/c3.png']),
];
