part of '../nize.dart';

class NizePalette {
  // ***************************************
  // Fields
  // ***************************************

  final List<NizeColor> _colors;

  // ***************************************
  // Constructors
  // ***************************************

  NizePalette(this._colors);

  // ***************************************
  // Getters
  // ***************************************

  /// The immutable list of colors of the palette.
  List<NizeColor> get colors => List.unmodifiable(_colors);

  /// The first color of the palette.
  NizeColor get first => _colors.first;

  /// The last color of the palette.
  NizeColor get last => _colors.last;

  /// Returns a random color from the palette.
  NizeColor get random {
    final random = Random();
    final randomIdx = random.nextInt(_colors.length);
    return _colors[randomIdx];
  }

  /// Return complementary colors.
  List<NizeColor> get complementary {
    return _colors.map((color) => color.complementary).toList();
  }

  /// Return the sorted colors by brightness.
  List<NizeColor> get sorted {
    List<NizeColor> colorsCopy = _colors;
    colorsCopy.sort((a, b) => a.computeLuminance().compareTo(b.computeLuminance()));
    return colorsCopy;
  }

  // ***************************************
  // Operators
  // ***************************************

  /// Operator to return the color at the given index.
  /// * `idx` the index of the desired color
  /// If the index is out of bounds the function will throw an error
  NizeColor operator [](int idx) {
    if (idx < 0 || idx >= _colors.length) {
      throw RangeError.index(idx, _colors, 'Index out of range');
    }
    return _colors[idx];
  }

  // ***************************************
  // Functions / Methods
  // ***************************************

  /// Function to return the color at the given index.
  /// * `idx` the index of the desired color
  /// If the index is out of bounds the function will throw an error
  NizeColor get(int idx) {
    if (idx < 0 || idx >= _colors.length) {
      throw RangeError.index(idx, _colors, 'Index out of range');
    }
    return _colors[idx];
  }

  /// Find closest color to the given color.
  /// * `color` the given color to match against
  NizeColor closest(NizeColor color) {
    return _colors.reduce(
      (a, b) => a.distance(color) < b.distance(color) ? a : b,
    );
  }

  /// Blend two colors from the palette
  ///
  /// * `idx1` is the index of the first color
  /// * `idx2` is the index of the second color
  /// * `value` is the linear interpolation value between the two colors
  /// ranging from 0.0 to 1.0, the value is optional with the default value of 0.5
  ///
  /// * `t = 0.0`, 100% of the the first color and 0% for the other
  /// * `t = 0.5`, 50% of the the first color and 50% for the other
  /// * `t = 1.0`, 0% of the the first color and 100% for the other
  NizeColor blend(int idx1, int idx2, {double value = 0.5}) {
    if (idx1 < 0 || idx1 >= _colors.length) throw RangeError.index(idx1, _colors, 'Index out of range');
    if (idx2 < 0 || idx2 >= _colors.length) throw RangeError.index(idx2, _colors, 'Index out of range');

    return _colors[idx1].blendWith(_colors[idx2], value: value);
  }
}
