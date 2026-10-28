part of '../../dart_unitz.dart';

/// {@template dart_unitz.CubicMetre}
/// The cubic metre, symbol m³, is the SI unit of volume.
///
/// https://en.wikipedia.org/wiki/Cubic_metre
/// {@endtemplate}
class CubicMetre extends Volume {
  /// {@macro dart_unitz.CubicMetre}
  CubicMetre([super.value]);

  @override
  String get name => 'Cubic metre';

  @override
  String get pluralName => 'Cubic metres';

  @override
  String get symbol => 'm³';

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num baseValue) {
    return baseValue;
  }

  @override
  CubicMetre instance([Object? value]) {
    return CubicMetre(value);
  }
}

/// {@template dart_unitz.CubicMeter}
/// An alias for [CubicMetre].
///
/// For American English, "meter" is used instead of "metre".
/// {@endtemplate}
class CubicMeter extends CubicMetre {
  /// {@macro dart_unitz.CubicMeter}
  CubicMeter([super.value]);

  @override
  String get name => 'Cubic meter';

  @override
  String get pluralName => 'Cubic meters';

  @override
  CubicMeter instance([Object? value]) {
    return CubicMeter(value);
  }
}
