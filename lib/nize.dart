library nize;

import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

//? MODELS
part 'gradient/nize_gradient.dart';

//? COLORS
part 'color/nize_color.dart';
part 'color/colors.dart';

part 'color/colors/black.dart';
part 'color/colors/blue.dart';
part 'color/colors/brown.dart';
part 'color/colors/gray.dart';
part 'color/colors/green.dart';
part 'color/colors/orange.dart';
part 'color/colors/pink.dart';
part 'color/colors/purple.dart';
part 'color/colors/red.dart';
part 'color/colors/white.dart';
part 'color/colors/yellow.dart';

//? GRADIENTS
part 'gradient/gradients.dart';

//? PALETTES
part 'palette/palettes.dart';
part 'palette/nize_palette.dart';

part 'palette/palettes/aurora_forest.dart';

class NameDynamic {
  final String name;
  final dynamic data;

  NameDynamic(this.name, this.data);
}
