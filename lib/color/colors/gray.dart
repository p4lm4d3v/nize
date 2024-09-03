part of '../../nize.dart';

class Gray {
  NizeColor trueGray = NizeColor.fromRGB(105, 105, 105);
  NizeColor darkSlate = NizeColor.fromRGB(13, 23, 23);
  NizeColor charcoal = NizeColor.fromRGB(23, 23, 23);
  NizeColor timelessGray = NizeColor.fromRGB(118, 127, 125);
  NizeColor silverCloud = NizeColor.fromRGB(194, 203, 201);

  List<NameDynamic> get all => [
        NameDynamic("trueGray", trueGray),
        NameDynamic("darkSlate", darkSlate),
        NameDynamic("charcoal", charcoal),
        NameDynamic("timelessGray", timelessGray),
        NameDynamic("silverCloud", silverCloud),
      ];
}
