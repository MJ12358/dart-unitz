part of dart_unitz;

/// The degree Celsius is the unit of temperature on the Celsius scale,
/// one of two temperature scales used in the
/// International System of Units (SI), the other being the Kelvin scale.
///
/// https://en.wikipedia.org/wiki/Celsius
class Celsius extends Temperature {
  Celsius([super.value]);

  @override
  String get name => 'Celsius';

  @override
  String get symbol => '°C';

  @override
  Unit toBase() {
    final num result = value + 273.15;
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = base.value - 273.15;
    return Celsius(result);
  }

  @override
  Unit newInstance([num? value]) {
    return Celsius(value);
  }
}
