part of '../../dart_unitz.dart';

/// {@template dart_unitz.Inch}
/// The inch (symbol: in or ″) is a unit of length
/// in the British imperial and the United States
/// customary systems of measurement.
/// It is equal to 1/36 yard or 1/12 of a foot.
///
/// https://en.wikipedia.org/wiki/Inch
/// {@endtemplate}
class Inch extends Length {
  /// {@macro dart_unitz.Inch}
  Inch([super.value]);

  @override
  String get name => 'Inch';

  @override
  String get pluralName => 'Inches';

  @override
  String get symbol => 'in';

  @override
  num get factor => 0.0254;

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
    return Inch(value);
  }
}
