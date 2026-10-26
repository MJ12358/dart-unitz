part of '../../dart_unitz.dart';

/// {@template dart_unitz.Pound}
/// The pound, symbol lb, is a unit of mass.
///
/// https://en.wikipedia.org/wiki/Pound_(mass)
/// {@endtemplate}
class Pound extends Mass {
  /// {@macro dart_unitz.Pound}
  Pound([super.value]);

  @override
  String get name => 'Pound';

  @override
  String get pluralName => 'Pounds';

  @override
  String get symbol => 'lb';

  @override
  num get factor => 0.45359237;

  @override
  num toBase() {
    return value * factor;
  }

  @override
  num fromBase(num base) {
    return base / factor;
  }

  @override
  Unit newInstance([Object? value]) {
    return Pound(value);
  }
}
