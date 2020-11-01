import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mais_acai/models/models.dart';
import '../../controllers/cart/cart_controller.dart';
import '../../helpers/helpers.dart';
import '../../models/order_component.dart';

import '../utils/constants.dart';

class GradientCard extends StatelessWidget {
  final Function onTap;
  final OrderComponent component;
  final bool isActive;

  const GradientCard({this.onTap, this.component, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF9a487f),
              Color(0xFF6A1953),
            ],
          ),
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(kBorderRadius),
          splashColor: Color(0xFFCED2D9),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                    child: Container(
                      width: 35,
                      height: 35,
                      child: Icon(
                        FlutterIcons.check_fea,
                        size: 25,
                        color: isActive ? Colors.white : Colors.transparent,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isActive ? Colors.green : Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      AssetsHelper.productFallback,
                      height: 120.0,
                    ),
                    // FadeInImage.assetNetwork(
                    //   placeholder: AssetsHelper.productFallback,
                    //   height: 120.0,
                    //   image: component?.imageURI,
                    // ),
                    Text(
                      component.name,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
