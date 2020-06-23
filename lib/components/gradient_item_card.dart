import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mais_acai/cart/order.dart';
import 'package:provider/provider.dart';

class GradientItemCard extends StatefulWidget {
  GradientItemCard({
    @required this.title,
    @required this.imageURI,
    @required this.lightColor,
    @required this.darkColor,
    this.item,
    this.itemType,
  });

  final String title;
  final String imageURI;
  final Color lightColor;
  final Color darkColor;
  final dynamic item;
  final int itemType;

  @override
  _GradientItemCardState createState() => _GradientItemCardState();
}

class _GradientItemCardState extends State<GradientItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (widget.itemType) {
          case 1:
            Provider.of<Order>(context, listen: false)
                    .order[1]
                    .contains(widget.item)
                ? Provider.of<Order>(context, listen: false)
                    .removeFlavor(widget.item)
                : Provider.of<Order>(context, listen: false)
                    .addFlavor(widget.item);
            break;
          case 2:
            Provider.of<Order>(context, listen: false)
                    .order[2]
                    .contains(widget.item)
                ? Provider.of<Order>(context, listen: false)
                    .removeAdittional(widget.item)
                : Provider.of<Order>(context, listen: false)
                    .addAdittional(widget.item);
            break;
          default:
            print('Item not found');
        }

        setState(() {});

        print(Provider.of<Order>(context, listen: false).order);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        constraints: BoxConstraints(
          minHeight: 180.0,
          minWidth: 180.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              widget.lightColor,
              widget.darkColor,
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                child: Container(
                  width: 35,
                  height: 35,
                  child: Icon(
                    FlutterIcons.check_fea,
                    size: 25,
                    color: Provider.of<Order>(context, listen: false)
                            .order[widget.itemType]
                            .contains(widget.item)
                        ? Colors.white
                        : Colors.transparent,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Provider.of<Order>(context, listen: false)
                            .order[widget.itemType]
                            .contains(widget.item)
                        ? Colors.green
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  widget.imageURI,
                  height: 120.0,
                ),
                Text(
                  widget.title,
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
    );
  }
}
