part of '../../dart_unitz.dart';

/// {@template dart_unitz.Celsius}
/// The degree Celsius is the unit of temperature on the Celsius scale,
/// one of two temperature scales used in the
/// International System of Units (SI), the other being the Kelvin scale.
///
/// https://en.wikipedia.org/wiki/Celsius
/// {@endtemplate}
class Celsius extends Temperature {
  /// {@macro dart_unitz.Celsius}
  Celsius([super.value]);

  @override
  String get name => 'Celsius';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°C';

  @override
  Celsius get boiling => Celsius(100);

  @override
  Celsius get freezing => Celsius(0);

  @override
  num get offset => 273.15;

  @override
  Unit instance([Object? value]) {
    return Celsius(value);
  }
}

/// {@template dart_unitz.Centigrade}
/// An alias for [Celsius].
/// {@endtemplate}
class Centigrade extends Celsius {
  /// {@macro dart_unitz.Centigrade}
  Centigrade([super.value]);

  @override
  String get name => 'Centigrade';

  @override
  String get pluralName => name;

  @override
  Centigrade get boiling => Centigrade(100);

  @override
  Centigrade get freezing => Centigrade(0);
}
