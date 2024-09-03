part of '../../nize.dart';

class Brown {
  NizeColor trueBrown = NizeColor.fromRGB(125, 75, 0);
  NizeColor poop = NizeColor.fromRGB(125, 75, 0);
  NizeColor earthlyMocha = NizeColor.fromRGB(17, 9, 4);
  NizeColor chocolateNoir = NizeColor.fromRGB(38, 38, 32);

  List<NameDynamic> get all => [
        NameDynamic("trueBrown", trueBrown),
        NameDynamic("poop", poop),
        NameDynamic("earthlyMocha", earthlyMocha),
        NameDynamic("chocolateNoir", chocolateNoir),
      ];
}
