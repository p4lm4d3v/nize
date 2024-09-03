part of '../../nize.dart';

class Orange {
  NizeColor trueOrange = NizeColor.fromARGB(255, 255, 165, 0);
  NizeColor creame = NizeColor.fromRGB(254, 245, 234);

  List<NameDynamic> get all => [
        NameDynamic("trueOrange", trueOrange),
        NameDynamic("creame", creame),
      ];
}
