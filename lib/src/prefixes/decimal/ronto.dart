part of dart_unitz;

/// {@template dart_unitz.Ronto}
/// The ronto (symbol: r) is a decimal prefix.
/// This denotes a factor of one octillionth.
///
/// https://en.wikipedia.org/wiki/Ronto-
/// {@endtemplate}
class Ronto extends DecimalPrefix {
  /// {@macro dart_unitz.Ronto}
  Ronto();

  @override
  String get name => 'ronto';

  @override
  num get power => 1e-27;

  @override
  String get symbol => 'r';

  @override
  String get word => 'octillionth';

  @override
  String get pluralWord => 'octillionths';
}
