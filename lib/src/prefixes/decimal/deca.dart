part of dart_unitz;

/// Deca (symbol da) is a decimal unit prefix in the metric
/// system denoting a factor of ten.
///
/// https://en.wikipedia.org/wiki/Deca-
class Deca extends DecimalPrefix {
  @override
  String get name => 'deca';

  @override
  num get power => 1e+1;

  @override
  String get symbol => 'da';

  @override
  String get word => 'ten';

  @override
  String get pluralWord => 'tens';
}
