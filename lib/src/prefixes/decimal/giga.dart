part of dart_unitz;

/// Giga (symbol G) is a unit prefix in the metric
/// system denoting a factor of one billion.
///
/// https://en.wikipedia.org/wiki/Giga-
class Giga extends DecimalPrefix {
  @override
  String get name => 'giga';

  @override
  num get power => 1e+9;

  @override
  String get symbol => 'G';

  @override
  String get word => 'billion';

  @override
  String get pluralWord => 'billions';
}
