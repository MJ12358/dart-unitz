part of '../../dart_unitz.dart';

/// {@template dart_unitz.Litre}
/// The litre, symbol L, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Litre
/// {@endtemplate}
class Litre extends Volume {
  /// {@macro dart_unitz.Litre}
  Litre([super.value]);

  @override
  String get name => 'Litre';

  @override
  String get pluralName => 'Litres';

  @override
  String get symbol => 'L';

  @override
  num get scale => 0.001;

  @override
  num toBase() {
    return value * scale;
  }

  @override
  num fromBase(num base) {
    return base / scale;
  }

  @override
  Unit instance([Object? value]) {
    return Litre(value);
  }
}

/// {@template dart_unitz.Liter}
/// An alias for [Litre].
///
/// For American English, "liter" is used instead of "litre".
/// {@endtemplate}
class Liter extends Litre {
  /// {@macro dart_unitz.Liter}
  Liter([super.value]);

  @override
  String get name => 'Liter';

  @override
  String get pluralName => 'Liters';
}
