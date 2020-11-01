import '../../helpers/firebase_helper.dart';
import '../order_component.dart';

class FlavorModel extends OrderComponent {
  FlavorModel({String name, String imageURI, double price})
      : super(name: name, imageURI: imageURI, price: price);

  factory FlavorModel.fromJSON(Map<String, dynamic> json) => FlavorModel(
      name: json[FirebaseHelper.flavorName],
      imageURI: json[FirebaseHelper.flavorImageURI],
      price: json[FirebaseHelper.flavorPrice]);
}
