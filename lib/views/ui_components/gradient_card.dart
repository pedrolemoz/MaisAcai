import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
            colors: component.colors,
          ),
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(kBorderRadius),
          splashColor: component.colors.last,
          highlightColor: component.colors.last,
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
                      component.imageAsset ?? AssetsHelper.acaiPuro,
                      height: 120.0,
                    ),
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
