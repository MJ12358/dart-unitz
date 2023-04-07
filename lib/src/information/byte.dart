part of dart_unitz;

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
  num toBase() {
    return value / 8;
  }

  @override
  num fromBase(num base) {
    return base * 8;
  }

  @override
  Unit newInstance([Object? value]) {
    return Byte(value);
  }
}
