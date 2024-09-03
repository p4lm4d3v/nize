part of '../../nize.dart';

class Pink {
  NizeColor truePink = NizeColor.fromRGB(255, 192, 203);
  NizeColor candyFloss = NizeColor.fromRGB(255, 237, 250);
  NizeColor popApricot = NizeColor.fromRGB(255, 94, 94);
  NizeColor roseBerry = NizeColor.fromRGB(226, 60, 100);

  List<NameDynamic> get all => [
        NameDynamic("truePink", truePink),
        NameDynamic("candyFloss", candyFloss),
        NameDynamic("popApricot", popApricot),
        NameDynamic("roseBerry", roseBerry),
      ];
}
