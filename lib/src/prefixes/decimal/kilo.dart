part of dart_unitz;

/// Kilo (symbol k) is a unit prefix in the metric
/// system denoting a factor of one thousand.
///
/// https://en.wikipedia.org/wiki/Kilo-
class Kilo extends DecimalPrefix {
  @override
  String get name => 'kilo';

  @override
  num get power => 1e+3;

  @override
  String get symbol => 'k';

  @override
  String get word => 'thousand';

  @override
  String get pluralWord => 'thousands';
}
