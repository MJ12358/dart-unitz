part of '../../dart_unitz.dart';

/// {@template dart_unitz.Tablespoon}
/// The tablespoon, symbol tbsp, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Tablespoon
/// {@endtemplate}
class Tablespoon extends Volume {
  /// {@macro dart_unitz.Tablespoon}
  Tablespoon([super.value]);

  @override
  String get name => 'Tablespoon';

  @override
  String get pluralName => 'Tablespoons';

  @override
  String get symbol => 'tbsp';

  @override
  num get scale => 0.000014786764782;

  @override
  Tablespoon instance([Object? value]) {
    return Tablespoon(value);
  }
}
