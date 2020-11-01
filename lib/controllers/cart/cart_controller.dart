import '../../models/models.dart';
import 'package:mobx/mobx.dart';
part 'cart_controller.g.dart';

class CartController = _CartControllerBase with _$CartController;

abstract class _CartControllerBase with Store {
  @observable
  var cart = <OrderModel>[].asObservable();

  @observable
  BowlModel tempBowl;

  @observable
  var tempFlavors = <FlavorModel>[].asObservable();

  @observable
  var tempAdditionals = <AdditionalModel>[].asObservable();

  @computed
  bool get hasBowl => tempBowl != null;

  @computed
  bool get hasAtLeastOneFlavor => tempFlavors.isNotEmpty;

  @computed
  bool get hasAtLeastOneAdditional => tempAdditionals.isNotEmpty;

  @action
  void toggleBowl({BowlModel bowl}) =>
      tempBowl != bowl ? tempBowl = bowl : tempBowl = null;

  @action
  void toggleFlavor({FlavorModel flavor}) =>
      tempFlavors.contains(flavor) ? _removeFlavor(flavor) : _addFlavor(flavor);

  @action
  void _addFlavor(FlavorModel flavor) {
    if (tempFlavors.length < 2 && !tempFlavors.contains(flavor)) {
      tempFlavors.add(flavor);
    }
  }

  @action
  void _removeFlavor(FlavorModel flavor) {
    tempFlavors.remove(flavor);
  }

  @action
  void toggleAdditional({AdditionalModel additional}) =>
      tempAdditionals.contains(additional)
          ? _removeAdditional(additional)
          : _addAdditional(additional);

  @action
  void _addAdditional(AdditionalModel additional) {
    if (tempAdditionals.length < 3 && !tempAdditionals.contains(additional)) {
      tempAdditionals.add(additional);
    }
  }

  @action
  void _removeAdditional(AdditionalModel additional) {
    tempAdditionals.remove(additional);
  }

  @action
  void clearTempOrder() {
    tempBowl = null;
    tempFlavors.clear();
    tempAdditionals.clear();
  }
}
