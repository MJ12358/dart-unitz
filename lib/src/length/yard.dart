part of '../../dart_unitz.dart';

/// {@template dart_unitz.Yard}
/// The yard, symbol yd, is a unit of length
/// in the Imperial and US customary systems of measurement.
///
/// https://en.wikipedia.org/wiki/Yard
/// {@endtemplate}
class Yard extends Length {
  /// {@macro dart_unitz.Yard}
  Yard([super.value]);

  @override
  String get name => 'Yard';

  @override
  String get pluralName => 'Yards';

  @override
  String get symbol => 'yd';

  @override
  num get factor => 0.9144;

  @override
  num toBase() {
    return value * factor;
  }

  @override
  num fromBase(num base) {
    return base / factor;
  }

  @override
  Unit newInstance([Object? value]) {
    return Yard(value);
  }
}
