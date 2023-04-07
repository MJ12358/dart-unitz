part of dart_unitz;

/// Hecto (symbol h) is a decimal unit prefix
/// in the metric system denoting a factor of one hundred.
///
/// https://en.wikipedia.org/wiki/Hecto-
class Hecto extends DecimalPrefix {
  @override
  String get name => 'hecto';

  @override
  num get power => 1e+2;

  @override
  String get symbol => 'h';

  @override
  String get word => 'hundred';

  @override
  String get pluralWord => 'hundreds';
}
