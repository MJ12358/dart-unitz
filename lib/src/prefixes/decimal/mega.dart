part of dart_unitz;

/// Mega (symbol M) is a unit prefix in the metric
/// system denoting a factor of one million.
///
/// https://en.wikipedia.org/wiki/Mega-
class Mega extends DecimalPrefix {
  @override
  String get name => 'mega';

  @override
  num get power => 1e+6;

  @override
  String get symbol => 'M';

  @override
  String get word => 'million';

  @override
  String get pluralWord => 'millions';
}
