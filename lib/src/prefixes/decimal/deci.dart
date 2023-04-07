part of dart_unitz;

/// Deci (symbol d) is a decimal unit prefix
/// in the metric system denoting a factor of one tenth.
///
/// https://en.wikipedia.org/wiki/Deci-
class Deci extends DecimalPrefix {
  @override
  String get name => 'deci';

  @override
  num get power => 1e-1;

  @override
  String get symbol => 'd';

  @override
  String get word => 'tenth';

  @override
  String get pluralWord => 'tenths';
}
