part of '../../dart_unitz.dart';

/// {@template dart_unitz.Chain}
/// The chain, symbol ch, is a unit of length
/// in the Imperial and US customary systems of measurement.
///
/// https://en.wikipedia.org/wiki/Chain_(unit)
/// {@endtemplate}
class Chain extends Length {
  /// {@macro dart_unitz.Chain}
  Chain([super.value]);

  @override
  String get name => 'Chain';

  @override
  String get pluralName => 'Chains';

  @override
  String get symbol => 'ch';

  @override
  num get scale => 20.1168;

  @override
  Chain instance([Object? value]) {
    return Chain(value);
  }
}
