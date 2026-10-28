part of '../../dart_unitz.dart';

/// {@template dart_unitz.Byte}
/// The byte is a unit of digital information
/// that most commonly consists of eight bits.
///
/// https://en.wikipedia.org/wiki/Byte
/// {@endtemplate}
class Byte extends Information {
  /// {@macro dart_unitz.Byte}
  Byte([super.value]);

  @override
  String get name => 'Byte';

  @override
  String get pluralName => 'Bytes';

  @override
  String get symbol => 'B';

  @override
  num get scale => 8;

  @override
  num toBase() {
    return value * scale;
  }

  @override
  num fromBase(num base) {
    return base / scale;
  }

  @override
  Byte instance([Object? value]) {
    return Byte(value);
  }
}
