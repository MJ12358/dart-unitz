part of dart_unitz;

/// {@template dart_unitz.Pebi}
/// The pebi (symbol: Pi) is a binary prefix.
///
/// https://en.wikipedia.org/wiki/Binary_prefix#pebi
/// {@endtemplate}
class Pebi extends BinaryPrefix {
  /// {@macro dart_unitz.Pebi}
  Pebi();

  @override
  String get name => 'pebi';

  @override
  num get power => 1.125899906842624e+15;

  @override
  String get symbol => 'Pi';

  @override
  String get word => 'quadrillion';

  @override
  String get pluralWord => 'quadrillions';
}
