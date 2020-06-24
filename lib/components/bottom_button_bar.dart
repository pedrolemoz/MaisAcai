import 'package:flutter/material.dart';
import 'package:mais_acai/cart/order.dart';
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
    bool active = Provider.of<Order>(context).order[widget.itemType].isNotEmpty;

    return GestureDetector(
      onTap: active ? widget.onTap : null,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: active ? kPurpleGradient : kGrayGradient,
        ),
        child: Center(
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: active ? Color(0xFFF5F8FC) : Colors.white,
                ),
          ),
        ),
        height: 70.0,
      ),
    );
  }
}
