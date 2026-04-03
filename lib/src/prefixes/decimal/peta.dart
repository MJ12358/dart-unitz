part of dart_unitz;

/// {@template dart_unitz.Peta}
/// The peta (symbol: P) is a decimal prefix.
/// This denotes a factor of one quadrillion.
///
/// https://en.wikipedia.org/wiki/Peta-
/// {@endtemplate}
class Peta extends DecimalPrefix {
  /// {@macro dart_unitz.Peta}
  Peta();

  @override
  String get name => 'peta';

  @override
  num get power => 1e+15;

  @override
  String get symbol => 'P';

  @override
  String get word => 'quadrillion';

  @override
  String get pluralWord => 'quadrillions';
}
