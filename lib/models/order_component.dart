import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../exceptions/exceptions.dart';

abstract class OrderComponent {
  String name;
  String imageURI;
  double price;

  OrderComponent({
    this.name,
    this.imageURI,
    this.price,
  })  : assert(name != null, throw NullAttributeException('name')),
        assert(imageURI != null, throw NullAttributeException('imageURI')),
        assert(price != null, throw NullAttributeException('price'));
}
