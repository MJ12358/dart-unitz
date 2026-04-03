part of dart_unitz;

/// {@template dart_unitz.Milli}
/// The milli (symbol: m) is a decimal prefix.
/// This denotes a factor of one thousandth.
///
/// https://en.wikipedia.org/wiki/Milli-
/// {@endtemplate}
class Milli extends DecimalPrefix {
  /// {@macro dart_unitz.Milli}
  Milli();

  @override
  String get name => 'milli';

  @override
  num get power => 1e-3;

  @override
  String get symbol => 'm';

  @override
  String get word => 'thousandth';

  @override
  String get pluralWord => 'thousandths';
}
