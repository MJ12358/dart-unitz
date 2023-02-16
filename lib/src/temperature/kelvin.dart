part of dart_unitz;

/// The kelvin, symbol K, is the primary unit of
/// temperature in the International System of Units (SI).
///
/// https://en.wikipedia.org/wiki/Kelvin
class Kelvin extends Temperature {
  Kelvin([super.value]);

  @override
  String get name => 'Kelvin';

  @override
  String get pluralName => name;

  @override
  String get symbol => 'K';

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num base) {
    return base;
  }

  @override
  Unit newInstance([num? value]) {
    return Kelvin(value);
  }

  @override
  Unit Function() tearOff() {
    return Kelvin.new;
  }
}
