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
  String get symbol => 'K';

  @override
  Unit toBase() {
    return Kelvin(value);
  }

  @override
  Unit fromBase(Unit base) {
    return Kelvin(base.value);
  }

  @override
  Unit newInstance([num? value]) {
    return Kelvin(value);
  }
}
