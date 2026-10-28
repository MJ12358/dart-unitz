part of '../../dart_unitz.dart';

/// {@template dart_unitz.Gradian}
/// The gradian, also known as the gon, grad, or grade,
/// is a unit of measurement of an angle,
/// defined as one hundredth of the right angle
///
/// https://en.wikipedia.org/wiki/Gradian
/// {@endtemplate}
class Gradian extends Angle {
  /// {@macro dart_unitz.Gradian}
  Gradian([super.value]);

  @override
  String get name => 'Gradian';

  @override
  String get pluralName => 'Gradians';

  @override
  String get symbol => 'grad';

  @override
  num get scale => 0.015708;

  @override
  num toBase() {
    return value * scale;
  }

  @override
  num fromBase(num base) {
    return base / scale;
  }

  @override
  Gradian instance([Object? value]) {
    return Gradian(value);
  }
}
