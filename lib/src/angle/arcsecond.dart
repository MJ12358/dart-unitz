part of dart_unitz;

/// An arcsecond (denoted by the symbol “)
/// is an anglular measurement equal to 1/3600 of a degree or 1/60 of an arcminute.
///
/// https://en.wikipedia.org/wiki/Minute_and_second_of_arc
class ArcSeconds extends Angle {
  ArcSeconds([super.value]);

  @override
  String get name => 'Arc Seconds';

  @override
  String get symbol => '"';

  @override
  Unit toBase() {
    final num result = value * math.pi / (180 * 3600);
    return ArcSeconds(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = base.value * (3600 * 180) / math.pi;
    return base.newInstance(result);
  }

  @override
  Unit newInstance([num? value]) {
    return ArcSeconds(value);
  }
}
