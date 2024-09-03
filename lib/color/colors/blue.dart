part of '../../nize.dart';

class Blue {
  NizeColor trueBlue = NizeColor.fromRGB(0, 0, 255);
  NizeColor midnight = NizeColor.fromRGB(16, 23, 32);
  NizeColor deepNavy = NizeColor.fromRGB(1, 18, 34);
  NizeColor cloudWisp = NizeColor.fromRGB(231, 246, 255);
  NizeColor coldSteel = NizeColor.fromRGB(227, 237, 248);
  NizeColor midnightSapphire = NizeColor.fromRGB(11, 22, 35);

  List<NameDynamic> get all => [
        NameDynamic("trueBlue", trueBlue),
        NameDynamic("midnight", midnight),
        NameDynamic("deepNavy", deepNavy),
        NameDynamic("cloudWisp", cloudWisp),
        NameDynamic("coldSteel", coldSteel),
        NameDynamic("midnightSapphire", midnightSapphire),
      ];
}
