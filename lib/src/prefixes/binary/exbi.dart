part of dart_unitz;

/// {@template dart_unitz.Exbi}
/// The exbi (symbol: Ei) is a binary prefix.
///
/// https://en.wikipedia.org/wiki/Binary_prefix#exbi
/// {@endtemplate}
class Exbi extends BinaryPrefix {
  /// {@macro dart_unitz.Exbi}
  Exbi();

  @override
  String get name => 'exbi';

  @override
  num get power => 1.152921504606846976e+18;

  @override
  String get symbol => 'Ei';

  @override
  String get word => 'quintillion';

  @override
  String get pluralWord => 'quintillions';
}
