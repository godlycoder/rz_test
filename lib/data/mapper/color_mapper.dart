import 'dart:ui';

extension ColorMapper on String {
  Color toColor() {
    return Color(int.parse(substring(1, 7), radix: 16) + 0xFF000000);
  }
}