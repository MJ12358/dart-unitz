part of dart_unitz;

/// Nano (symbol n) is a unit prefix in the metric
/// system denoting a factor of one billionth.
///
/// https://en.wikipedia.org/wiki/Nano-
class Nano extends DecimalPrefix {
  @override
  String get name => 'nano';

  @override
  num get power => 1e-9;

  @override
  String get symbol => 'n';

  @override
  String get word => 'billionth';

  @override
  String get pluralWord => 'billionths';
}
