part of '../../nize.dart';

class Purple {
  NizeColor truePurple = NizeColor.fromRGB(160, 32, 240);
  NizeColor lavenderWhip = NizeColor.fromRGB(250, 245, 255);
  NizeColor velvetAubergine = NizeColor.fromRGB(25, 11, 20);

  List<NameDynamic> get all => [
        NameDynamic("truePurple", truePurple),
        NameDynamic("lavenderWhip", lavenderWhip),
        NameDynamic("velvetAubergine", velvetAubergine),
      ];
}
