part of '../../dart_unitz.dart';

/// {@template dart_unitz.Gallon}
/// The gallon, symbol gal, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Gallon
/// {@endtemplate}
class Gallon extends Volume {
  /// {@macro dart_unitz.Gallon}
  Gallon([super.value]);

  @override
  String get name => 'Gallon';

  @override
  String get pluralName => 'Gallons';

  @override
  String get symbol => 'gal';

  @override
  num get scale => 0.0037854117840007;

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
    return Gallon(value);
  }
}
