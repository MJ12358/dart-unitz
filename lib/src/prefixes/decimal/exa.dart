part of dart_unitz;

/// {@template dart_unitz.Exa}
/// The exa (symbol: E) is a decimal prefix.
/// This denotes a factor of one quintillion.
///
/// https://en.wikipedia.org/wiki/Metric_prefix#exa
/// {@endtemplate}
class Exa extends DecimalPrefix {
  /// {@macro dart_unitz.Exa}
  Exa();

  @override
  String get name => 'exa';

  @override
  num get power => 1e+18;

  @override
  String get symbol => 'E';

  @override
  String get word => 'quintillion';

  @override
  String get pluralWord => 'quintillions';
}
