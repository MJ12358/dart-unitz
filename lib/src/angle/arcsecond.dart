part of dart_unitz;

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
  num toBase() {
    return value * math.pi / (180 * 3600);
  }

  @override
  num fromBase(num base) {
    return base * (3600 * 180) / math.pi;
  }

  @override
  Unit newInstance([Object? value]) {
    return ArcSecond(value);
  }
}
