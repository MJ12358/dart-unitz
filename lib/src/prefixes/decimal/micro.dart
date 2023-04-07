part of dart_unitz;

/// Micro (symbol μ) is a unit prefix in the metric
/// system denoting a factor of one millionth.
///
/// https://en.wikipedia.org/wiki/Micro-
class Micro extends DecimalPrefix {
  @override
  String get name => 'micro';

  @override
  num get power => 1e-6;

  @override
  String get symbol => 'μ';

  @override
  String get word => 'millionth';

  @override
  String get pluralWord => 'millionths';
}
