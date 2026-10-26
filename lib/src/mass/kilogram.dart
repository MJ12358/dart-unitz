part of '../../dart_unitz.dart';

/// {@template dart_unitz.Kilogram}
/// The kilogram, symbol kg, is the SI unit of mass.
///
/// https://en.wikipedia.org/wiki/Kilogram
/// {@endtemplate}
class Kilogram extends Mass {
  /// {@macro dart_unitz.Kilogram}
  Kilogram([super.value]);

  @override
  String get name => 'Kilogram';

  @override
  String get pluralName => 'Kilograms';

  @override
  String get symbol => 'kg';

  @override
  num get factor => 1;

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num base) {
    return base;
  }

  @override
  Unit newInstance([Object? value]) {
    return Kilogram(value);
  }
}
