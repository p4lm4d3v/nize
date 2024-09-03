part of '../../nize.dart';

class White {
  NizeColor fullWhite = NizeColor.fromRGB(255, 255, 255);
  NizeColor antiqueWhite = NizeColor.fromRGB(252, 237, 216);

  List<NameDynamic> get all => [
        NameDynamic("fullWhite", fullWhite),
        NameDynamic("antiqueWhite", antiqueWhite),
      ];
}
