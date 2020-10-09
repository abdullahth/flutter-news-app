import 'package:flutter/material.dart';

class DimsConfig {
  static double _deviceHeight, _deviceWidth;

  static init(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
  }

  // 683.43 is the Debugging Device Height
  // 411.43 is the Debugging Device Width
  static configHieht(double input) => input * (_deviceHeight / 683.43);

  static configWidth(double input) => input * (_deviceWidth / 411.43);
}
