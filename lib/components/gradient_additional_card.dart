import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mais_acai/model/order.dart';
import 'package:mais_acai/model/product_data.dart';
import 'package:provider/provider.dart';

class GradientAdditionalCard extends StatefulWidget {
  GradientAdditionalCard({
    @required this.item,
  });

  final Additionals item;

  @override
  _GradientAdditionalState createState() => _GradientAdditionalState();
}

class _GradientAdditionalState extends State<GradientAdditionalCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<Order>(context, listen: false)
                .order[2]
                .contains(widget.item.name)
            ? Provider.of<Order>(context, listen: false)
                .removeAdittional(widget.item.name)
            : Provider.of<Order>(context, listen: false)
                .addAdittional(widget.item.name);

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
            colors: widget.item.colors,
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
                            .order[widget.item.itemType]
                            .contains(widget.item.name)
                        ? Colors.white
                        : Colors.transparent,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Provider.of<Order>(context, listen: false)
                            .order[widget.item.itemType]
                            .contains(widget.item.name)
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
                  widget.item.imageURI,
                  height: 120.0,
                ),
                Text(
                  widget.item.name,
                  textAlign: TextAlign.center,
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
