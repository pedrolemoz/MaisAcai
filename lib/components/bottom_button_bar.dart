import 'package:flutter/material.dart';
import 'package:mais_acai/model/order.dart';
import 'package:mais_acai/utils/constants.dart';
import 'package:provider/provider.dart';

class BottomButtonBar extends StatefulWidget {
  BottomButtonBar({
    @required this.label,
    @required this.itemType,
    @required this.onTap,
  });

  final String label;
  final int itemType;
  final Function onTap;

  @override
  _BottomButtonBarState createState() => _BottomButtonBarState();
}

class _BottomButtonBarState extends State<BottomButtonBar> {
  @override
  Widget build(BuildContext context) {
    bool active;

    switch (widget.itemType) {
      case 0:
        active = Provider.of<Order>(context).order[widget.itemType] != dynamic;
        break;
      case 1:
        active = Provider.of<Order>(context)
                .order[widget.itemType]
                .isNotEmpty &&
            Provider.of<Order>(context).order[widget.itemType - 1] != dynamic;
        break;
      case 2:
        active = Provider.of<Order>(context)
                .order[widget.itemType]
                .isNotEmpty &&
            Provider.of<Order>(context).order[widget.itemType - 1].isNotEmpty &&
            Provider.of<Order>(context).order[widget.itemType - 2] != dynamic;
        break;
      default:
        active = false;
    }

    return Material(
      elevation: 2.0,
      child: Ink(
        height: 70.0,
        decoration: BoxDecoration(
          gradient: active ? kPurpleGradient : kGrayGradient,
        ),
        child: InkWell(
          onTap: active ? widget.onTap : null,
          splashColor: Color(0xFFCED2D9),
          child: Center(
            child: Text(
              widget.label,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
