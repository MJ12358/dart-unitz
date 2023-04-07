part of dart_unitz;

/// Centi (symbol c) is a unit prefix in the metric
/// system denoting a factor of one hundredth.
///
/// https://en.wikipedia.org/wiki/Centi-
class Centi extends DecimalPrefix {
  @override
  String get name => 'centi';

  @override
  num get power => 1e-2;

  @override
  String get symbol => 'c';

  @override
  String get word => 'hundredth';

  @override
  String get pluralWord => 'hundredths';
}
