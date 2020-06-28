import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mais_acai/model/order.dart';
import 'package:mais_acai/model/product_data.dart';
import 'package:mais_acai/utils/constants.dart';
import 'package:provider/provider.dart';

class GradientFlavorCard extends StatefulWidget {
  GradientFlavorCard({
    @required this.item,
  });

  final Flavors item;

  @override
  _GradientFlavorCardState createState() => _GradientFlavorCardState();
}

class _GradientFlavorCardState extends State<GradientFlavorCard> {
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
            colors: widget.item.colors,
          ),
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: InkWell(
          onTap: () {
            Provider.of<Order>(context, listen: false)
                    .order[1]
                    .contains(widget.item.name)
                ? Provider.of<Order>(context, listen: false)
                    .removeFlavor(widget.item.name)
                : Provider.of<Order>(context, listen: false)
                    .addFlavor(widget.item.name);

            setState(() {});

            print(Provider.of<Order>(context, listen: false).order);
          },
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
        ),
      ),
    );
  }
}
