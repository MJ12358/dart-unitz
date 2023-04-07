part of dart_unitz;

/// Milli (symbol m) is a unit prefix in the metric
/// system denoting a factor of one thousandth.
///
/// https://en.wikipedia.org/wiki/Milli-
class Milli extends DecimalPrefix {
  @override
  String get name => 'milli';

  @override
  num get power => 1e-3;

  @override
  String get symbol => 'm';

  @override
  String get word => 'thousandth';

  @override
  String get pluralWord => 'thousandths';
}
