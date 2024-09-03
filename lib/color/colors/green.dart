part of '../../nize.dart';

class Green {
  NizeColor trueGreen = NizeColor.fromRGB(0, 255, 0);
  NizeColor forestShadow = NizeColor.fromRGB(40, 59, 47);
  NizeColor aquamarine = NizeColor.fromRGB(16, 93, 94);
  NizeColor mayanJade = NizeColor.fromRGB(0, 154, 110);
  NizeColor mintOfSpring = NizeColor.fromRGB(179, 237, 169);
  NizeColor scandinavianClovers = NizeColor.fromRGB(235, 250, 219);
  NizeColor pineShade = NizeColor.fromRGB(41, 62, 51);

  List<NameDynamic> get all => [
        NameDynamic("trueGreen", trueGreen),
        NameDynamic("forestShadow", forestShadow),
        NameDynamic("aquamarine", aquamarine),
        NameDynamic("mayanJade", mayanJade),
        NameDynamic("mintOfSpring", mintOfSpring),
        NameDynamic("scandinavianClovers", scandinavianClovers),
        NameDynamic("pineShade", pineShade),
      ];
}
