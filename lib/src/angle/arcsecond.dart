part of dart_unitz;

/// An arcsecond (denoted by the symbol “) is an angular
/// measurement equal to 1/3600 of a degree or 1/60 of an arcminute.
///
/// https://en.wikipedia.org/wiki/Minute_and_second_of_arc
class ArcSecond extends Angle {
  ArcSecond([super.value]);

  @override
  String get name => 'Arc Second';

  @override
  String get pluralName => 'Arc Seconds';

  @override
  String get symbol => '"';

  @override
  Unit toBase() {
    final num result = value * math.pi / (180 * 3600);
    return ArcSecond(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = base.value * (3600 * 180) / math.pi;
    return base.newInstance(result);
  }

  @override
  Unit newInstance([num? value]) {
    return ArcSecond(value);
  }

  @override
  Unit Function() tearOff() {
    return ArcSecond.new;
  }
}
