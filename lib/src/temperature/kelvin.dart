part of dart_unitz;

/// {@template dart_unitz.Kelvin}
/// The kelvin, symbol K, is the primary unit of
/// temperature in the International System of Units (SI).
///
/// https://en.wikipedia.org/wiki/Kelvin
/// {@endtemplate}
class Kelvin extends Temperature {
  /// {@macro dart_unitz.Kelvin}
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
  Unit newInstance([Object? value]) {
    return Kelvin(value);
  }

  @override
  // kelvin can get prefixed
  Type get prefixType => DecimalPrefix;
}
