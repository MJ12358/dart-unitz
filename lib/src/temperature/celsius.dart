part of dart_unitz;

/// {@template dart_unitz.Celsius}
/// The degree Celsius is the unit of temperature on the Celsius scale,
/// one of two temperature scales used in the
/// International System of Units (SI), the other being the Kelvin scale.
///
/// https://en.wikipedia.org/wiki/Celsius
/// {@endtemplate}
class Celsius extends Temperature {
  /// {@macro dart_unitz.Celsius}
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
  Unit newInstance([Object? value]) {
    return Celsius(value);
  }
}
