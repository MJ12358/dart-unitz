part of '../../dart_unitz.dart';

/// {@template dart_unitz.Week}
/// The week, standard symbol: wk,
/// is a unit of time equal to 604800 seconds.
///
/// https://en.wikipedia.org/wiki/Week
/// {@endtemplate}
class Week extends Time {
  /// {@macro dart_unitz.Week}
  Week([super.value]);

  @override
  String get name => 'Week';

  @override
  String get pluralName => 'Weeks';

  @override
  String get symbol => 'wk';

  @override
  num get scale => 604800;

  @override
  Unit instance([Object? value]) {
    return Week(value);
  }
}
