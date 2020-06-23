import 'package:flutter/material.dart';

class GradientStaticItemCard extends StatelessWidget {
  GradientStaticItemCard({
    @required this.title,
    @required this.imageURI,
    @required this.lightColor,
    @required this.darkColor,
    this.shadow = false,
    this.onTap,
  });

  final String title;
  final String imageURI;
  final Color lightColor;
  final Color darkColor;
  final bool shadow;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        constraints: BoxConstraints(
          minHeight: 180.0,
          minWidth: 180.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: !shadow
              ? null
              : [
                  BoxShadow(
                    color: darkColor,
                    spreadRadius: 0.5,
                    blurRadius: 1.8,
                  ),
                ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              lightColor,
              darkColor,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              imageURI,
              height: 120.0,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
