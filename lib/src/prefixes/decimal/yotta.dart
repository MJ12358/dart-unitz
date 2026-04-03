part of dart_unitz;

/// {@template dart_unitz.Yotta}
/// The yotta (symbol: Y) is a decimal prefix.
/// This denotes a factor of one septillion.
///
/// https://en.wikipedia.org/wiki/Yotta-
/// {@endtemplate}
class Yotta extends DecimalPrefix {
  /// {@macro dart_unitz.Yotta}
  Yotta();

  @override
  String get name => 'yotta';

  @override
  num get power => 1e+24;

  @override
  String get symbol => 'Y';

  @override
  String get word => 'septillion';

  @override
  String get pluralWord => 'septillions';
}
