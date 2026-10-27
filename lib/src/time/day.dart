part of '../../dart_unitz.dart';

/// {@template dart_unitz.Day}
/// The day, standard symbol: d,
/// is a unit of time equal to 86400 seconds.
///
/// https://en.wikipedia.org/wiki/Day
/// {@endtemplate}
class Day extends Time {
  /// {@macro dart_unitz.Day}
  Day([super.value]);

  @override
  String get name => 'Day';

  @override
  String get pluralName => 'Days';

  @override
  String get symbol => 'd';

  @override
  num get scale => 86400;

  @override
  Unit instance([Object? value]) {
    return Day(value);
  }
}
