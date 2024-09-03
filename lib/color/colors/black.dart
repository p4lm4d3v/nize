part of '../../nize.dart';

class Black {
  NizeColor trueBlack = NizeColor.fromRGB(0, 0, 0);
  NizeColor oil = NizeColor.fromRGB(12, 12, 12);
  NizeColor obsidian = NizeColor.fromRGB(11, 18, 21);
  NizeColor rich = NizeColor.fromRGB(2, 13, 25);
  NizeColor slateShadow = NizeColor.fromRGB(16, 20, 21);

  List<NameDynamic> get all => [
        NameDynamic("trueBlack", trueBlack),
        NameDynamic("oil", oil),
        NameDynamic("obsidian", obsidian),
        NameDynamic("rich", rich),
        NameDynamic("slateShadow", slateShadow),
      ];
}
