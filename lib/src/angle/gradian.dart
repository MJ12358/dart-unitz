part of dart_unitz;

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
  num toBase() {
    return value * 0.015708;
  }

  @override
  num fromBase(num base) {
    return base / 0.015708;
  }

  @override
  Unit newInstance([Object? value]) {
    return Gradian(value);
  }
}
