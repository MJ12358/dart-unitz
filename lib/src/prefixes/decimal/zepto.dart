part of dart_unitz;

/// {@template dart_unitz.Zepto}
/// The zepto (symbol: z) is a decimal prefix.
/// This denotes a factor of one sextillionth.
///
/// https://en.wikipedia.org/wiki/Zepto-
/// {@endtemplate}
class Zepto extends DecimalPrefix {
  /// {@macro dart_unitz.Zepto}
  Zepto();

  @override
  String get name => 'zepto';

  @override
  num get power => 1e-21;

  @override
  String get symbol => 'z';

  @override
  String get word => 'sextillionth';

  @override
  String get pluralWord => 'sextillionths';
}
