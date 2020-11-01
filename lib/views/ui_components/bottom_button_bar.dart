import 'package:flutter/material.dart';

import '../utils/constants.dart';

class BottomButtonBar extends StatelessWidget {
  BottomButtonBar({
    @required this.label,
    @required this.onTap,
    this.isActive = false,
  });

  final String label;
  final Function onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        elevation: 2.0,
        child: Ink(
          height: 70.0,
          decoration: BoxDecoration(
            gradient: isActive ? kPurpleGradient : kGrayGradient,
          ),
          child: InkWell(
            onTap: isActive ? onTap : null,
            splashColor: Color(0xFF6a1953),
            highlightColor: Color(0xFF6a1953),
            child: Center(
              child: Text(label,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
