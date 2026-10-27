part of '../../dart_unitz.dart';

/// {@template dart_unitz.Minute}
/// The minute, standard symbol: min,
/// is a unit of time equal to 60 seconds.
///
/// https://en.wikipedia.org/wiki/Minute
/// {@endtemplate}
class Minute extends Time {
  /// {@macro dart_unitz.Minute}
  Minute([super.value]);

  @override
  String get name => 'Minute';

  @override
  String get pluralName => 'Minutes';

  @override
  String get symbol => 'min';

  @override
  num get scale => 60;

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
    return Minute(value);
  }
}
