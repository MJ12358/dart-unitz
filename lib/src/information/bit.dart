part of dart_unitz;

/// {@template dart_unitz.Bit}
/// The bit is the most basic unit of information
/// in computing and digital communications.
///
/// https://en.wikipedia.org/wiki/Bit
/// {@endtemplate}
class Bit extends Information {
  /// {@macro dart_unitz.Bit}
  Bit([super.value]);

  @override
  String get name => 'Bit';

  @override
  String get pluralName => 'Bits';

  @override
  String get symbol => 'b';

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num base) {
    return base;
  }

  @override
  Unit newInstance([Object? value]) {
    return Bit(value);
  }
}
