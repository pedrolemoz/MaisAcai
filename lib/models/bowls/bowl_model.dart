import 'package:flutter/material.dart';

import '../order_component.dart';

class BowlModel extends OrderComponent {
  BowlModel({
    String name,
    String imageAsset,
    double price,
    List<Color> colors = const [
      Color(0xFF9a487f),
      Color(0xFF6A1953),
    ],
  }) : super(name: name, imageAsset: imageAsset, price: price, colors: colors);
}
