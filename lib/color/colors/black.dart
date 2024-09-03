part of '../../nize.dart';

class Black {
  NizeColor trueBlack = NizeColor.fromRGB(0, 0, 0);
  NizeColor oil = NizeColor.fromRGB(12, 12, 12);
  NizeColor obsidian = NizeColor.fromRGB(11, 18, 21);
  NizeColor rich = NizeColor.fromRGB(2, 13, 25);
  NizeColor slateShadow = NizeColor.fromRGB(16, 20, 21);

  List<NizeColor> get all => [
        trueBlack,
        oil,
        obsidian,
        rich,
        slateShadow,
      ];
}
