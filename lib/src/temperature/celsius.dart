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
  String get pluralName => name;

  @override
  String get symbol => '°C';

  @override
  num toBase() {
    return value + 273.15;
  }

  @override
  num fromBase(num base) {
    return base - 273.15;
  }

  @override
  Unit newInstance([num? value]) {
    return Celsius(value);
  }

  @override
  Unit Function() tearOff() {
    return Celsius.new;
  }
}
