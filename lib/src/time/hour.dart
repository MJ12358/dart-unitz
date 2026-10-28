part of '../../dart_unitz.dart';

/// {@template dart_unitz.Hour}
/// The hour, standard symbol: h,
/// is a unit of time equal to 3600 seconds.
///
/// https://en.wikipedia.org/wiki/Hour
/// {@endtemplate}
class Hour extends Time {
  /// {@macro dart_unitz.Hour}
  Hour([super.value]);

  @override
  String get name => 'Hour';

  @override
  String get pluralName => 'Hours';

  @override
  String get symbol => 'h';

  @override
  num get scale => 3600;

  @override
  Hour instance([Object? value]) {
    return Hour(value);
  }
}
