import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mais_acai/model/cart.dart';
import 'package:provider/provider.dart';

class Order extends ChangeNotifier {
  List order = [dynamic, [], []];

  // String orderToJSON() {
  //   return json.encode({'order': order});
  // }

  void addOrderToCart(BuildContext context) {
    Provider.of<Cart>(context, listen: false).addOrder(order);
  }

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
