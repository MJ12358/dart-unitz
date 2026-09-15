part of '../../dart_unitz.dart';

/// {@template dart_unitz.Furlong}
/// The furlong, symbol fur, is a unit of length
/// in the Imperial and US customary systems of measurement.
///
/// https://en.wikipedia.org/wiki/Furlong
/// {@endtemplate}
class Furlong extends Length {
  /// {@macro dart_unitz.Furlong}
  Furlong([super.value]);

  @override
  String get name => 'Furlong';

  @override
  String get pluralName => 'Furlongs';

  @override
  String get symbol => 'fur';

  @override
  num toBase() {
    return value * 201.168;
  }

  @override
  num fromBase(num base) {
    return base / 201.168;
  }

  @override
  Unit newInstance([Object? value]) {
    return Furlong(value);
  }
}
