import 'package:donut_app_2a_figueroa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final List pizzaOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Ice Cream",
      "Krispy Cream",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    [
      "Grape Ape",
      "Krispy Cream",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png"
    ],
    [
      "Choco",
      "Donkey Donut",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png"
    ],
    [
      "Sugar",
      "Dunkin Donuts",
      "32",
      Colors.orangeAccent,
      "lib/images/sugar_donut.png"
    ],
    [
      "Extra Chocolate",
      "Krispy Cream",
      "38",
      Colors.brown,
      "lib/images/extrachoco_donut.png"
    ],
    [
      "Ice Cream",
      "Krispy Cream",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
  ];
  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Cúantos elementos tiene
        itemCount: pizzaOnSale.length,
        padding: const EdgeInsets.all(12),
        //Encargado de organizar la cuadrícula
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Determinar número de columnas
            crossAxisCount: 2,
            //Relación de aspecto
            childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          //Elemento individual de la cuadrícula
          return DonutTile(
              donutFlavor: pizzaOnSale[index][0],
              donutStore: pizzaOnSale[index][1],
              donutPrice: pizzaOnSale[index][2],
              donutColor: pizzaOnSale[index][3],
              imageName: pizzaOnSale[index][4]);
        });
  }
}
