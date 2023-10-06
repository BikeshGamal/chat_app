import 'package:flutter/material.dart';
class TwoItemHeading extends StatelessWidget {
  TwoItemHeading({required this.labelName,
    required this.iconName,
    required this.fontSize,
    required this.iconSize,
    this.isMainHeading
  });
  String labelName;
  dynamic iconName;
  double fontSize;
  dynamic iconSize;
  bool? isMainHeading;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("${labelName}",style:
    (isMainHeading?? false)?
        TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ):TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
    )),
        Icon(iconName,size: iconSize,
        )
      ],
    );
  }
}
