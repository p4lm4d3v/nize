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

  // static List<NameDynamic> get all {
  //   NameDynamic colors = [];

  //   colors.addAll(black.all);
  //   colors.addAll(blue.all);
  //   colors.addAll(brown.all);
  //   colors.addAll(gray.all);
  //   colors.addAll(green.all);
  //   colors.addAll(yellow.all);
  //   colors.addAll(orange.all);
  //   colors.addAll(pink.all);
  //   colors.addAll(purple.all);
  //   colors.addAll(white.all);

  //   return colors;
  // }

  static List<NameDynamic> get groups => [
        NameDynamic("black", black.all),
        NameDynamic("blue", blue.all),
        NameDynamic("brown", brown.all),
        NameDynamic("gray", gray.all),
        NameDynamic("green", green.all),
        NameDynamic("yellow", yellow.all),
        NameDynamic("orange", orange.all),
        NameDynamic("pink", pink.all),
        NameDynamic("purple", purple.all),
        NameDynamic("white", white.all),
      ];
}
