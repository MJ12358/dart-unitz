part of '../../dart_unitz.dart';

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
  num get scale => 1;

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num base) {
    return base;
  }

  @override
  Unit instance([Object? value]) {
    return Metre(value);
  }
}

/// {@template dart_unitz.Meter}
/// An alias for [Metre].
///
/// For American English, "meter" is used instead of "metre".
/// {@endtemplate}
class Meter extends Metre {
  /// {@macro dart_unitz.Meter}
  Meter([super.value]);

  @override
  String get name => 'Meter';

  @override
  String get pluralName => 'Meters';
}
