import '../../helpers/firebase_helper.dart';
import '../order_component.dart';

class AdditionalModel extends OrderComponent {
  AdditionalModel({String name, String imageURI, double price})
      : super(name: name, imageURI: imageURI, price: price);

  factory AdditionalModel.fromJSON(Map<String, dynamic> json) =>
      AdditionalModel(
          name: json[FirebaseHelper.additionalName],
          imageURI: json[FirebaseHelper.additionalImageURI],
          price: json[FirebaseHelper.additionalPrice]);
}
