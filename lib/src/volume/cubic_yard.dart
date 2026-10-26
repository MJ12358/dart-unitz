part of '../../dart_unitz.dart';

/// {@template dart_unitz.CubicYard}
/// The cubic yard, symbol yd³, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Cubic_yard
/// {@endtemplate}
class CubicYard extends Volume {
  /// {@macro dart_unitz.CubicYard}
  CubicYard([super.value]);

  @override
  String get name => 'Cubic yard';

  @override
  String get pluralName => 'Cubic yards';

  @override
  String get symbol => 'yd³';

  @override
  num get factor => 0.76455485799241;

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
    return CubicYard(value);
  }
}
