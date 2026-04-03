part of dart_unitz;

/// {@template dart_unitz.Nano}
/// The nano (symbol: n) is a decimal prefix.
/// This denotes a factor of one billionth.
///
/// https://en.wikipedia.org/wiki/Nano-
/// {@endtemplate}
class Nano extends DecimalPrefix {
  /// {@macro dart_unitz.Nano}
  Nano();

  @override
  String get name => 'nano';

  @override
  num get power => 1e-9;

  @override
  String get symbol => 'n';

  @override
  String get word => 'billionth';

  @override
  String get pluralWord => 'billionths';
}
