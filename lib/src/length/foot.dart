part of dart_unitz;

/// {@template dart_unitz.Foot}
/// The foot (pl. feet), standard symbol: ft,
/// is a unit of length in the British imperial
/// and United States customary systems of measurement.
///
/// https://en.wikipedia.org/wiki/Foot_(unit)
/// {@endtemplate}
class Foot extends Length {
  /// {@macro dart_unitz.Foot}
  Foot([super.value]);

  @override
  String get name => 'Foot';

  @override
  String get pluralName => 'Feet';

  @override
  String get symbol => 'ft';

  @override
  num toBase() {
    return value / 3.2808;
  }

  @override
  num fromBase(num base) {
    return base * 3.2808;
  }

  @override
  Unit newInstance([Object? value]) {
    return Foot(value);
  }
}
