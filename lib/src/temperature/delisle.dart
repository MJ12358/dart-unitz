part of '../../dart_unitz.dart';

/// {@template dart_unitz.Delisle}
/// The Delisle scale is a temperature scale,
/// notable as one of the only temperature scales that is
/// inverted from the amount of thermal energy it measures.
///
/// https://en.wikipedia.org/wiki/Delisle_scale
/// {@endtemplate}
class Delisle extends Temperature {
  /// {@macro dart_unitz.Delisle}
  Delisle([super.value]);

  @override
  String get name => 'Delisle';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°D';

  @override
  Delisle get boiling => Delisle(0);

  @override
  Delisle get freezing => Delisle(150);

  @override
  num get scale => -2 / 3;

  @override
  num get offset => 373.15;

  @override
  Delisle instance([Object? value]) {
    return Delisle(value);
  }
}
