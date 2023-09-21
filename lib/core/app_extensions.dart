import 'package:flutter/material.dart';

extension IsDarkTheme on BuildContext {
  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;

  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.height;
}
