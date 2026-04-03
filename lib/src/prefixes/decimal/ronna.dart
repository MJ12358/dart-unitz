part of dart_unitz;

/// {@template dart_unitz.Ronna}
/// The ronna (symbol: R) is a decimal prefix.
/// This denotes a factor of one octillion.
///
/// https://en.wikipedia.org/wiki/Ronna-
/// {@endtemplate}
class Ronna extends DecimalPrefix {
  /// {@macro dart_unitz.Ronna}
  Ronna();

  @override
  String get name => 'ronna';

  @override
  num get power => 1e+27;

  @override
  String get symbol => 'R';

  @override
  String get word => 'octillion';

  @override
  String get pluralWord => 'octillions';
}
