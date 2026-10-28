part of '../../dart_unitz.dart';

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
  Kelvin get boiling => Kelvin(373.15);

  @override
  Kelvin get freezing => Kelvin(273.15);

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num baseValue) {
    return baseValue;
  }

  @override
  Kelvin instance([Object? value]) {
    return Kelvin(value);
  }

  @override
  // kelvin can get prefixed
  Type get prefixType => DecimalPrefix;
}
