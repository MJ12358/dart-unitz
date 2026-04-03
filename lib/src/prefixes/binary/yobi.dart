part of dart_unitz;

/// {@template dart_unitz.Yobi}
/// The yobi (symbol: Yi) is a binary prefix.
///
/// https://en.wikipedia.org/wiki/Binary_prefix#yobi
/// {@endtemplate}
class Yobi extends BinaryPrefix {
  /// {@macro dart_unitz.Yobi}
  Yobi();

  @override
  String get name => 'yobi';

  @override
  num get power => 1.208925819614629174706176e+24;

  @override
  String get symbol => 'Yi';

  @override
  String get word => 'septillion';

  @override
  String get pluralWord => 'septillions';
}
