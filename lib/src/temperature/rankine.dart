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
  Unit toBase() {
    final num result = 5 * value / 9;
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = 9 * base.value / 5;
    return Rankine(result);
  }

  @override
  Unit newInstance([num? value]) {
    return Rankine(value);
  }

  @override
  Unit Function() tearOff() {
    return Rankine.new;
  }
}
