import 'package:flutter/material.dart';

class BuildDot extends StatelessWidget {
  bool isSelected;

  BuildDot({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            margin: EdgeInsets.only(right: 6),
            height: 12,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
          )
        : Container(
            margin: EdgeInsets.only(right: 6),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
            ),
          );
  }
}
