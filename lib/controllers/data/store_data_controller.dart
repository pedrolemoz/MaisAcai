import 'package:mobx/mobx.dart';

import '../../models/models.dart';
import 'constants/constants.dart';

part 'store_data_controller.g.dart';

class StoreDataController = _StoreDataControllerBase with _$StoreDataController;

abstract class _StoreDataControllerBase with Store {
  _StoreDataControllerBase() {
    _fetchAvaliableComponents();
  }

  @observable
  var bowls = <BowlModel>[].asObservable();

  @observable
  var flavors = <FlavorModel>[].asObservable();

  @observable
  var additionals = <AdditionalModel>[].asObservable();

  @action
  void _fetchAvaliableComponents() {
    bowls = kBowls.asObservable();
    flavors = kFlavors.asObservable();
    additionals = kAdditionals.asObservable();
  }
}
