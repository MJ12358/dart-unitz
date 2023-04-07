part of dart_unitz;

/// {@template dart_unitz.Metre}
/// The metre, symbol m, is the primary unit of length
/// in the International System of Units (SI)
///
/// https://en.wikipedia.org/wiki/Metre
/// {@endtemplate}
class Metre extends Length {
  /// {@macro dart_unitz.Metre}
  Metre([super.value]);

  @override
  String get name => 'Metre';

  @override
  String get pluralName => 'Metres';

  @override
  String get symbol => 'm';

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
    return Metre(value);
  }
}
