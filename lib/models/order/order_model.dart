import '../models.dart';
import 'package:meta/meta.dart';

class OrderModel {
  final BowlModel bowl;
  final List<FlavorModel> flavors;
  final List<AdditionalModel> additionals;
  final double totalPrice;

  OrderModel({this.bowl, this.flavors, this.additionals, this.totalPrice = 0});

  OrderModel copyWith({
    BowlModel bowl,
    List<FlavorModel> flavors,
    List<AdditionalModel> additionals,
    @required double totalPrice,
  }) =>
      OrderModel(
        bowl: bowl ?? this.bowl,
        flavors: flavors ?? this.flavors,
        additionals: additionals ?? this.additionals,
        totalPrice: totalPrice,
      );
}
