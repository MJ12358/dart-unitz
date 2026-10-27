part of '../../dart_unitz.dart';

/// {@template dart_unitz.Pint}
/// The pint, symbol pt, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Pint
/// {@endtemplate}
class Pint extends Volume {
  /// {@macro dart_unitz.Pint}
  Pint([super.value]);

  @override
  String get name => 'Pint';

  @override
  String get pluralName => 'Pints';

  @override
  String get symbol => 'pt';

  @override
  num get scale => 0.000473176473056;

  @override
  Unit instance([Object? value]) {
    return Pint(value);
  }
}
