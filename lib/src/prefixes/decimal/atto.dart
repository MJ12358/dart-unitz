part of dart_unitz;

/// {@template dart_unitz.Atto}
/// The atto (symbol: a) is a decimal prefix.
/// This denotes a factor of one quintillionth.
///
/// https://en.wikipedia.org/wiki/Metric_prefix#atto
/// {@endtemplate}
class Atto extends DecimalPrefix {
  /// {@macro dart_unitz.Atto}
  Atto();

  @override
  String get name => 'atto';

  @override
  num get power => 1e-18;

  @override
  String get symbol => 'a';

  @override
  String get word => 'quintillionth';

  @override
  String get pluralWord => 'quintillionths';
}
