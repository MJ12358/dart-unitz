part of '../../dart_unitz.dart';

/// {@template dart_unitz.LightYear}
/// The light year, symbol ly, is a unit of length
/// defined as the distance that light travels in one year in a vacuum.
///
/// https://en.wikipedia.org/wiki/Light-year
/// {@endtemplate}
class LightYear extends Length {
  /// {@macro dart_unitz.LightYear}
  LightYear([super.value]);

  @override
  String get name => 'Light Year';

  @override
  String get pluralName => 'Light Years';

  @override
  String get symbol => 'ly';

  @override
  num get factor => 9.4607e15;

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
    return LightYear(value);
  }
}
