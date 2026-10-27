part of '../../dart_unitz.dart';

/// {@template dart_unitz.CubicFoot}
/// The cubic foot, symbol ft³, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Cubic_foot
/// {@endtemplate}
class CubicFoot extends Volume {
  /// {@macro dart_unitz.CubicFoot}
  CubicFoot([super.value]);

  @override
  String get name => 'Cubic foot';

  @override
  String get pluralName => 'Cubic feet';

  @override
  String get symbol => 'ft³';

  @override
  num get scale => 0.028316846591991;

  @override
  num toBase() {
    return value * scale;
  }

  @override
  num fromBase(num base) {
    return base / scale;
  }

  @override
  Unit instance([Object? value]) {
    return CubicFoot(value);
  }
}
