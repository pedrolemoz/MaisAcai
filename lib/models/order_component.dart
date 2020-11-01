import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../exceptions/exceptions.dart';

abstract class OrderComponent {
  String name;
  String imageAsset;
  double price;
  List<Color> colors;

  OrderComponent({
    this.name,
    this.imageAsset,
    this.price = 0,
    this.colors,
  }) : assert(name != null, throw NullAttributeException('name'));
}
