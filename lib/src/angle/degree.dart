part of dart_unitz;

/// A degree (in full, a degree of arc, arc degree, or arcdegree),
/// usually denoted by ° (the degree symbol),
/// is a measurement of a plane angle in which one full rotation is 360 degrees
///
/// https://en.wikipedia.org/wiki/Degree_(angle)
class Degree extends Angle {
  Degree([super.value]);

  @override
  String get name => 'Degrees';

  @override
  String get symbol => '°';

  @override
  Unit toBase() {
    final num result = value * (math.pi / 180);
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = base.value * (180 / math.pi);
    return Degree(result);
  }

  @override
  Unit newInstance([num? value]) {
    return Degree(value);
  }
}
