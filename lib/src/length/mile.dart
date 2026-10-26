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
  num get factor => 1609.344;

  @override
  num toBase() {
    return value * factor;
  }

  @override
  num fromBase(num base) {
    return base / factor;
  }

  @override
  Unit instance([Object? value]) {
    return Mile(value);
  }
}
