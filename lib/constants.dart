import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF3857F0);
const kTextColor = Color(0xFF333333);
const Color red = Color(0xFFF22D2F);
const Color white = Color(0xFFFFFFFF);

//-------------------------customText--------------------

Widget customText(String text, Color textColor, double size, fontWeight,
    {int maxLine = 1, TextAlign align = TextAlign.left, double? height}) {
  return Text(
    text,
    textAlign: align,
    maxLines: maxLine,
    style: TextStyle(
      color: textColor,
      fontSize: size,
      height: height,
      fontWeight: fontWeight,
    ),
  );
}
