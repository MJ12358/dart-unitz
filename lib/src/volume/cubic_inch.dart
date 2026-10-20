part of '../../dart_unitz.dart';

/// {@template dart_unitz.CubicInch}
/// The cubic inch, symbol in³, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Cubic_inch
/// {@endtemplate}
class CubicInch extends Volume {
  /// {@macro dart_unitz.CubicInch}
  CubicInch([super.value]);

  @override
  String get name => 'Cubic inch';

  @override
  String get pluralName => 'Cubic inches';

  @override
  String get symbol => 'in³';

  @override
  num get factor => 0.000016387;

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
    return CubicInch(value);
  }
}
