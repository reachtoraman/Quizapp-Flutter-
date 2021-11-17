import 'package:flutter/material.dart';

class Widgets {
  static customButton(
      double radius, Color color, String text, TextStyle style,context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6, left: 6, right: 6, bottom: 6),
        child: Center(
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }

  static text(String text, double fontsize, FontWeight fontWeight, Color color,
      ) {
        return
    Text(
      text,
      style: TextStyle(
          // fontFamily: fontfamily,
          fontSize: fontsize,
          fontWeight: fontWeight,
          color: color),
    );
  }
}
