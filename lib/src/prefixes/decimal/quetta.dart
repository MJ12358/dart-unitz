part of dart_unitz;

/// {@template dart_unitz.Quetta}
/// The quetta (symbol: Q) is a decimal prefix.
/// This denotes a factor of one nonillion.
///
/// https://en.wikipedia.org/wiki/Quetta-
/// {@endtemplate}
class Quetta extends DecimalPrefix {
  /// {@macro dart_unitz.Quetta}
  Quetta();

  @override
  String get name => 'quetta';

  @override
  num get power => 1e+30;

  @override
  String get symbol => 'Q';

  @override
  String get word => 'nonillion';

  @override
  String get pluralWord => 'nonillions';
}
