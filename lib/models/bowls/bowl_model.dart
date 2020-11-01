import '../../helpers/firebase_helper.dart';
import '../order_component.dart';

class BowlModel extends OrderComponent {
  BowlModel({String name, String imageURI, double price})
      : super(name: name, imageURI: imageURI, price: price);

  factory BowlModel.fromJSON(Map<String, dynamic> json) => BowlModel(
      name: json[FirebaseHelper.bowName],
      imageURI: json[FirebaseHelper.bowImageURI],
      price: json[FirebaseHelper.bowPrice]);
}
