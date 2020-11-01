import '../../models/models.dart';
import 'package:mobx/mobx.dart';

part 'store_data_controller.g.dart';

class StoreDataController = _StoreDataControllerBase with _$StoreDataController;

abstract class _StoreDataControllerBase with Store {
  @observable
  var bowls = <BowlModel>[
    BowlModel(name: '300 ml', price: 0, imageURI: ''),
    BowlModel(name: '400 ml', price: 0, imageURI: ''),
    BowlModel(name: '500 ml', price: 0, imageURI: ''),
    BowlModel(name: '1 litro', price: 0, imageURI: ''),
  ].asObservable();

  @observable
  var flavors = <FlavorModel>[
    FlavorModel(name: 'Açaí Puro', price: 0, imageURI: ''),
    FlavorModel(name: 'Açaí com Banana', price: 0, imageURI: ''),
    FlavorModel(name: 'Açaí com Morango', price: 0, imageURI: ''),
    FlavorModel(name: 'Açaí com Cupuaçu', price: 0, imageURI: ''),
  ].asObservable();

  @observable
  var additionals = <AdditionalModel>[
    AdditionalModel(name: 'Brigadeiro', price: 0, imageURI: ''),
    AdditionalModel(name: 'Calda de Chocolate', price: 0, imageURI: ''),
    AdditionalModel(
        name: 'Calda de Chocolate com Coco', price: 0, imageURI: ''),
    AdditionalModel(name: 'Cerejas', price: 0, imageURI: ''),
    AdditionalModel(name: 'Leite Condensado', price: 0, imageURI: ''),
    AdditionalModel(name: 'Granola', price: 0, imageURI: ''),
  ].asObservable();
}
