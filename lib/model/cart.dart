import 'dart:convert';

import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier {
  List cart = [];

  void addOrder(order) {
    cart.add(order);
    notifyListeners();
  }

  void removeOrder(order) {
    cart.remove(order);
    notifyListeners();
  }

  String cartToJSON() {
    return json.encode({'cart': cart});
  }
}
