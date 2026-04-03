part of dart_unitz;

/// {@template dart_unitz.Quecto}
/// The quecto (symbol: q) is a decimal prefix.
/// This denotes a factor of one nonillionth.
///
/// https://en.wikipedia.org/wiki/Quecto-
/// {@endtemplate}
class Quecto extends DecimalPrefix {
  /// {@macro dart_unitz.Quecto}
  Quecto();

  @override
  String get name => 'quecto';

  @override
  num get power => 1e-30;

  @override
  String get symbol => 'q';

  @override
  String get word => 'nonillionth';

  @override
  String get pluralWord => 'nonillionths';
}
