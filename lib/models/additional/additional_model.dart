import 'package:flutter/material.dart';

import '../../helpers/firebase_helper.dart';
import '../order_component.dart';

class AdditionalModel extends OrderComponent {
  AdditionalModel({
    String name,
    String imageAsset,
    double price,
    List<Color> colors = const [
      Color(0xFF9a487f),
      Color(0xFF6A1953),
    ],
  }) : super(name: name, imageAsset: imageAsset, price: price, colors: colors);
}
