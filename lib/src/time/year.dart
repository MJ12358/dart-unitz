part of '../../dart_unitz.dart';

/// {@template dart_unitz.Year}
/// The year, standard symbol: a,
/// is a unit of time equal to 31556952 seconds (average year length).
///
/// https://en.wikipedia.org/wiki/Year
/// {@endtemplate}
class Year extends Time {
  /// {@macro dart_unitz.Year}
  Year([super.value]);

  @override
  String get name => 'Year';

  @override
  String get pluralName => 'Years';

  @override
  String get symbol => 'a';

  @override
  num get scale => 31556952;

  @override
  Unit instance([Object? value]) {
    return Year(value);
  }
}
