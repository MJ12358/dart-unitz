part of '../../dart_unitz.dart';

/// {@template dart_unitz.Radian}
/// The radian, denoted by the symbol rad,
/// is the unit of angle in the International System of Units
///
/// https://en.wikipedia.org/wiki/Radian
/// {@endtemplate}
class Radian extends Angle {
  /// {@macro dart_unitz.Radian}
  Radian([super.value]);

  @override
  String get name => 'Radian';

  @override
  String get pluralName => 'Radians';

  @override
  String get symbol => 'rad';

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num baseValue) {
    return baseValue;
  }

  @override
  Radian instance([Object? value]) {
    return Radian(value);
  }
}
