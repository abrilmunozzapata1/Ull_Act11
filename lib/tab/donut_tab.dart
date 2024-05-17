import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Charms flor rosa",
      "1000",
      Colors.pinkAccent,
      "assets/images/avatar1.jpg"
    ],
    [
      "Charm estrella de mar",
      "3500",
      Colors.deepOrangeAccent,
      "assets/images/avatar2.jpg"
    ],
    [
      "Charm estrella oro",
      "5000",
      Colors.blueAccent,
      "assets/images/avatar3.jpg"
    ],
    ["Charm mama", "7800", Colors.pinkAccent, "assets/images/avatar4.jpg"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
