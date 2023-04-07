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
  num toBase() {
    return 373.15 - value * (2 / 3);
  }

  @override
  num fromBase(num base) {
    return (373.15 - base) * (3 / 2);
  }

  @override
  Unit newInstance([Object? value]) {
    return Delisle(value);
  }
}
