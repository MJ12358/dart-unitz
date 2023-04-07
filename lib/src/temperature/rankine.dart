part of dart_unitz;

/// The Rankine scale is an absolute
/// scale of thermodynamic temperature.
/// Zero on the Rankine scale is absolute zero,
/// but a temperature difference of one Rankine degree
/// is defined as equal to one Fahrenheit degree,
/// rather than the Celsius degree used on the Kelvin scale.
///
/// https://en.wikipedia.org/wiki/Rankine_scale
class Rankine extends Temperature {
  Rankine([super.value]);

  @override
  String get name => 'Rankine';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°Ra';

  @override
  num toBase() {
    return 5 * value / 9;
  }

  @override
  num fromBase(num base) {
    return 9 * base / 5;
  }

  @override
  Unit newInstance([Object? value]) {
    return Rankine(value);
  }
}
