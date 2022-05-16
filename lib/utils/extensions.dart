import 'package:flutter/material.dart';
import 'package:responsiveness/theme/theme.dart';

extension FunctionalExtension<T> on T {
  R map<R>(R Function(T value) fn) {
    return fn(this);
  }
}

extension ContextUtils on BuildContext {
  bool get isSmallScreen => ThemeSize.isSmallScreen(this);

  bool get isBigScreen => !isSmallScreen;
}
