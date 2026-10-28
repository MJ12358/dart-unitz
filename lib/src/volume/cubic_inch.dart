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
  num get scale => 0.000016387064;

  @override
  CubicInch instance([Object? value]) {
    return CubicInch(value);
  }
}
