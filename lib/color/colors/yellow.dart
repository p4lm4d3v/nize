part of '../../nize.dart';

class Yellow {
  NizeColor trueYellow = NizeColor.fromRGB(255, 239, 0);
  NizeColor neoSolar = NizeColor.fromRGB(232, 227, 0);
  NizeColor mayLemon = NizeColor.fromRGB(255, 212, 100);

  List<NameDynamic> get all => [
        NameDynamic("trueYellow", trueYellow),
        NameDynamic("neoSolar", neoSolar),
        NameDynamic("mayLemon", mayLemon),
      ];
}
