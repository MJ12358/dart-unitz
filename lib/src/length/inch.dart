part of dart_unitz;

/// The inch (symbol: in or ″) is a unit of length
/// in the British imperial and the United States
/// customary systems of measurement.
/// It is equal to 1/36 yard or 1/12 of a foot.
///
/// https://en.wikipedia.org/wiki/Inch
class Inch extends Length {
  Inch([super.value]);

  @override
  String get name => 'Inch';

  @override
  String get pluralName => 'Inches';

  @override
  String get symbol => 'in';

  @override
  num toBase() {
    return value / 39.3700787402;
  }

  @override
  num fromBase(num base) {
    return base * 39.3700787402;
  }

  @override
  Unit newInstance([Object? value]) {
    return Inch(value);
  }
}
