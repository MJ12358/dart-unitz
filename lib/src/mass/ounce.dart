part of '../../dart_unitz.dart';

/// {@template dart_unitz.Ounce}
/// The ounce, symbol oz, is a unit of mass.
///
/// https://en.wikipedia.org/wiki/Ounce
/// {@endtemplate}
class Ounce extends Mass {
  /// {@macro dart_unitz.Ounce}
  Ounce([super.value]);

  @override
  String get name => 'Ounce';

  @override
  String get pluralName => 'Ounces';

  @override
  String get symbol => 'oz';

  @override
  num get factor => 0.028349556839727;

  @override
  num toBase() {
    return value * factor;
  }

  @override
  num fromBase(num base) {
    return base / factor;
  }

  @override
  Unit instance([Object? value]) {
    return Ounce(value);
  }
}
