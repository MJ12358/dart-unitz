part of dart_unitz;

/// The Delisle scale is a temperature scale,
/// notable as one of the only temperature scales that is
/// inverted from the amount of thermal energy it measures.
///
/// https://en.wikipedia.org/wiki/Delisle_scale
class Delisle extends Temperature {
  Delisle([super.value]);

  @override
  String get name => 'Delisle';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°D';

  @override
  Unit toBase() {
    final num result = 373.15 - value * (2 / 3);
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = (373.15 - base.value) * (3 / 2);
    return Delisle(result);
  }

  @override
  Unit newInstance([num? value]) {
    return Delisle(value);
  }

  @override
  Unit Function() tearOff() {
    return Delisle.new;
  }
}
