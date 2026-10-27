part of '../../dart_unitz.dart';

/// {@template dart_unitz.Second}
/// The second, standard symbol: s,
/// is the base unit of time in the International System of Units (SI).
///
/// https://en.wikipedia.org/wiki/Second
/// {@endtemplate}
class Second extends Time {
  /// {@macro dart_unitz.Second}
  Second([super.value]);

  @override
  String get name => 'Second';

  @override
  String get pluralName => 'Seconds';

  @override
  String get symbol => 's';

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
    return Second(value);
  }
}
