part of '../nize.dart';

class NizeColors {
  static Black get black => Black();
  static Blue get blue => Blue();
  static Brown get brown => Brown();
  static Gray get gray => Gray();
  static Green get green => Green();
  static Yellow get yellow => Yellow();
  static Orange get orange => Orange();
  static Pink get pink => Pink();
  static Purple get purple => Purple();
  static White get white => White();

  static List<NizeColor> get all {
    List<NizeColor> colors = [];
    colors.addAll(black.all);
    colors.addAll(blue.all);
    colors.addAll(brown.all);
    colors.addAll(gray.all);
    colors.addAll(green.all);
    colors.addAll(yellow.all);
    colors.addAll(orange.all);
    colors.addAll(pink.all);
    colors.addAll(purple.all);
    colors.addAll(white.all);
    return colors;
  }
}
