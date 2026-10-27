part of '../../dart_unitz.dart';

/// {@template dart_unitz.Fahrenheit}
/// Fahrenheit temperature scale,
/// based on 32° for the freezing point of water
/// and 212° for the boiling point of water,
/// the interval between the two being divided into 180 equal parts.
///
/// https://en.wikipedia.org/wiki/Fahrenheit
/// {@endtemplate}
class Fahrenheit extends Temperature {
  /// {@macro dart_unitz.Fahrenheit}
  Fahrenheit([super.value]);

  @override
  String get name => 'Fahrenheit';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°F';

  @override
  Fahrenheit get boiling => Fahrenheit(212);

  @override
  Fahrenheit get freezing => Fahrenheit(32);

  @override
  num get scale => 5 / 9;

  @override
  num get offset => 273.15 - 32 * scale;

  @override
  num toBase() {
    return value * scale + offset;
  }

  @override
  num fromBase(num base) {
    return (base - offset) / scale;
  }

  @override
  Unit instance([Object? value]) {
    return Fahrenheit(value);
  }
}
