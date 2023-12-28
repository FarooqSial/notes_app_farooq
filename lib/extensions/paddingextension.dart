import 'package:flutter/material.dart';

extension widgetextention on Widget {
  Widget allPadding(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }

  Widget onlyPadding(double t, double r, double b, double l) {
    return Padding(
      padding: EdgeInsets.only(top: t, right: r, left: l, bottom: b),
      child: this,
    );
  }

  Widget symmetricPadding(double hor, double ver) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hor, vertical: ver),
      child: this,
    );
  }
}
