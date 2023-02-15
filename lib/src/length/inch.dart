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
  String get symbol => 'in';

  @override
  Unit toBase() {
    final num result = value / 39.3700787402;
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = base.value * 39.3700787402;
    return Inch(result);
  }

  @override
  Unit newInstance([num? value]) {
    return Inch(value);
  }
}
