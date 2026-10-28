part of '../../dart_unitz.dart';

/// {@template dart_unitz.ArcSecond}
/// An arcsecond (denoted by the symbol “) is an angular
/// measurement equal to 1/3600 of a degree or 1/60 of an arcminute.
///
/// https://en.wikipedia.org/wiki/Minute_and_second_of_arc
/// {@endtemplate}
class ArcSecond extends Angle {
  /// {@macro dart_unitz.ArcSecond}
  ArcSecond([super.value]);

  @override
  String get name => 'Arc Second';

  @override
  String get pluralName => 'Arc Seconds';

  @override
  String get symbol => '"';

  @override
  num get scale => 3600 * 180;

  @override
  Unit instance([Object? value]) {
    return ArcSecond(value);
  }
}
