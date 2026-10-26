part of '../../dart_unitz.dart';

/// {@template dart_unitz.AstronomicalUnit}
/// The astronomical unit, symbol au, is a unit of length used in astronomy
/// defined as the distance from the Earth to the Sun.
///
/// https://en.wikipedia.org/wiki/Astronomical_unit
/// {@endtemplate}
class AstronomicalUnit extends Length {
  /// {@macro dart_unitz.AstronomicalUnit}
  AstronomicalUnit([super.value]);

  @override
  String get name => 'Astronomical Unit';

  @override
  String get pluralName => 'Astronomical Units';

  @override
  String get symbol => 'au';

  @override
  num get factor => 1.495978707e11;

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
    return AstronomicalUnit(value);
  }
}
