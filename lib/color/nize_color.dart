part of '../nize.dart';

class NizeColor {
  // ***************************************
  // Fields
  // ***************************************

  final Color _color;

  // ***************************************
  // Constructors
  // ***************************************

  /// Construct a nice color from the base dart color.
  ///
  /// For example, to get a fully opaque orange, you would use
  /// `const NizeColor(Color(0xFFFF9000))`
  NizeColor(this._color);

  /// Construct a nice color from four integers.
  ///
  /// * `a` is the alpha value, with 0 being transparent and 255 being fully
  ///   opaque.
  /// * `r` is [red], from 0 to 255.
  /// * `g` is [green], from 0 to 255.
  /// * `b` is [blue], from 0 to 255.
  ///
  /// Out of range values are brought into range using modulo 255.
  factory NizeColor.fromARGB(int a, int r, int g, int b) {
    return NizeColor(
      Color.fromARGB(a, r, g, b),
    );
  }

  /// Create a color from red, green and blue similar to `rgb()` in CSS.
  ///
  /// * `r` is [red], from 0 to 255.
  /// * `g` is [green], from 0 to 255.
  /// * `b` is [blue], from 0 to 255.
  ///
  /// Out of range values are brought into range using modulo 255.
  factory NizeColor.fromRGB(int r, int g, int b) {
    return NizeColor(
      Color.fromRGBO(r, g, b, 1.0),
    );
  }

  /// Create a color from red, green, blue, and opacity, similar to `rgba()` in CSS.
  ///
  /// * `r` is [red], from 0 to 255.
  /// * `g` is [green], from 0 to 255.
  /// * `b` is [blue], from 0 to 255.
  /// * `opacity` is alpha channel of this color as a double, with 0.0 being
  ///   transparent and 1.0 being fully opaque.
  ///
  /// Out of range values are brought into range using modulo 255.
  factory NizeColor.fromRGBO(int r, int g, int b, double a) {
    return NizeColor(
      Color.fromRGBO(r, g, b, a),
    );
  }

  /// Construct a color from the hexadecimal int.
  factory NizeColor.fromHex(int value) {
    return NizeColor(
      Color(value),
    );
  }

  // ***************************************
  // Getters
  // ***************************************

  /// The red channel of the color.
  int get red => _color.red;

  /// The green channel of the color.
  int get green => _color.green;

  /// The blue channel of the color.
  int get blue => _color.blue;

  /// The alpha channel of the color.
  int get alpha => _color.alpha;

  /// The dart color class.
  Color get color => _color;

  /// The complementary color.
  NizeColor get complementary {
    return NizeColor.fromARGB(
      _color.alpha,
      255 - _color.red,
      255 - _color.green,
      255 - _color.blue,
    );
  }

  // ***************************************
  // Functions / Methods
  // ***************************************

  /// Function to calculate the color distance between the colors.
  double distance(NizeColor other) {
    final redDiffSq = pow(red - other.red, 2);
    final greenDiffSq = pow(green - other.green, 2);
    final blueDiffSq = pow(blue - other.blue, 2);
    return sqrt(redDiffSq + greenDiffSq + blueDiffSq);
  }

  /// Function to blend two NizeColor colors together.
  ///
  /// * `other` is the other color to mix with the [this]
  /// * `value` is the linear interpolation value between the two colors
  /// ranging from 0.0 to 1.0, the value is optional with the default value of 0.5
  ///
  /// * `t = 0.0`, 100% of the the first color and 0% for the other
  /// * `t = 0.5`, 50% of the the first color and 50% for the other
  /// * `t = 1.0`, 0% of the the first color and 100% for the other
  NizeColor blendWith(NizeColor other, {double value = .5}) {
    if (value >= 0 && value <= 1.0) {
      throw ArgumentError.value(value, "value");
    }
    return NizeColor(
      Color.lerp(_color, other._color, value)!,
    );
  }

  /// Function to adjust brightness of the color.
  ///
  /// * `factor` is the factor for changing the brightness
  ///
  /// The red, green and blue values are clamped to a range [0, 255] regardless of the factor
  NizeColor adjustBrightness(double factor) {
    int r = (_color.red * factor).clamp(0, 255).toInt();
    int g = (_color.green * factor).clamp(0, 255).toInt();
    int b = (_color.blue * factor).clamp(0, 255).toInt();
    return NizeColor.fromARGB(_color.alpha, r, g, b);
  }

  /// Function to calculate the brightness value in range [0.0, 1.0]
  ///
  /// * 0.0 - darkest
  /// * 1.0 - lightest
  ///
  /// Represents the relative luminance of the color. This value is computationally
  /// expensive to calculate.
  double computeLuminance() {
    return _color.computeLuminance();
  }

  /// Method to convert the color to a hex string
  ///
  /// * `includeAlpha` is the flag that determines if the output string contains the "ff" prefix
  String toHex({bool includeAlpha = false}) {
    return includeAlpha ? '#${_color.value.toRadixString(16).padLeft(8, '0')}' : '#${_color.value.toRadixString(16).substring(2).padLeft(6, '0')}';
  }

  /// Overriding of the toString method for better debug representation
  @override
  String toString() {
    return 'NizeColor(${toHex(includeAlpha: true)})';
  }
}
