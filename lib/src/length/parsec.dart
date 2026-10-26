part of '../../dart_unitz.dart';

/// {@template dart_unitz.Parsec}
/// The parsec, symbol pc, is a unit of length used in astronomy
/// defined as the distance at which one astronomical unit
/// subtends an angle of one arcsecond.
///
/// https://en.wikipedia.org/wiki/Parsec
/// {@endtemplate}
class Parsec extends Length {
  /// {@macro dart_unitz.Parsec}
  Parsec([super.value]);

  @override
  String get name => 'Parsec';

  @override
  String get pluralName => 'Parsecs';

  @override
  String get symbol => 'pc';

  @override
  num get factor => 3.0856775814913673e16;

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
    return Parsec(value);
  }
}
