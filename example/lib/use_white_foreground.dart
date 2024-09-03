import 'dart:math';
import 'dart:ui';

bool useWhiteForeground(Color backgroundColor, {double bias = 0.0}) {
  // Old:
  // return 1.05 / (color.computeLuminance() + 0.05) > 4.5;

  // New:
  int v = sqrt(pow(backgroundColor.red, 2) * 0.299 + pow(backgroundColor.green, 2) * 0.587 + pow(backgroundColor.blue, 2) * 0.114).round();
  return v < 130 + bias ? true : false;
}
