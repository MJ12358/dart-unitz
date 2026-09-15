part of '../../dart_unitz.dart';

/// {@template dart_unitz.Mile}
/// The mile, symbol mi, is a unit of length
/// in the Imperial and US customary systems of measurement.
///
/// https://en.wikipedia.org/wiki/Mile
/// {@endtemplate}
class Mile extends Length {
  /// {@macro dart_unitz.Mile}
  Mile([super.value]);

  @override
  String get name => 'Mile';

  @override
  String get pluralName => 'Miles';

  @override
  String get symbol => 'mi';

  @override
  num toBase() {
    return value * 1609.344;
  }

  @override
  num fromBase(num base) {
    return base / 1609.344;
  }

  @override
  Unit newInstance([Object? value]) {
    return Mile(value);
  }
}
