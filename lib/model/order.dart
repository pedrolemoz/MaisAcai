import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Order extends ChangeNotifier {
  List order = [dynamic, [], []];

  void setBowl(dynamic bowl) {
    order[0] = bowl;
    notifyListeners();
  }

  void addFlavor(dynamic flavor) {
    if (order[1].length < 2 && !order[1].contains(flavor)) {
      order[1].add(flavor);
    }
    notifyListeners();
  }

  void removeFlavor(dynamic flavor) {
    order[1].remove(flavor);
    notifyListeners();
  }

  void addAdittional(dynamic adittional) {
    if (order[2].length < 3 && !order[2].contains(adittional)) {
      order[2].add(adittional);
    }
    notifyListeners();
  }

  void removeAdittional(dynamic adittional) {
    order[2].remove(adittional);
    notifyListeners();
  }
}
