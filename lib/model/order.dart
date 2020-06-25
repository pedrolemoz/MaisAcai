import 'package:flutter/foundation.dart';

class Order extends ChangeNotifier {
  List order = [[], [], []];
  int orderIndex = 0;

  void setBowl(dynamic bowl) {
    if (order[0].length < 1) {
      order[0].add(bowl);
    }
    notifyListeners();
  }

  void removeBowl(dynamic bowl) {
    order[0].remove(bowl);
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
