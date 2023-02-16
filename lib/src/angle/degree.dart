part of dart_unitz;

/// A degree (in full, a degree of arc, arc degree, or arcdegree),
/// usually denoted by ° (the degree symbol),
/// is a measurement of a plane angle in which one full rotation is 360 degrees
///
/// https://en.wikipedia.org/wiki/Degree_(angle)
class Degree extends Angle {
  Degree([super.value]);

  @override
  String get name => 'Degree';

  @override
  String get pluralName => 'Degrees';

  @override
  String get symbol => '°';

  @override
  num toBase() {
    return value * (math.pi / 180);
  }

  @override
  num fromBase(num base) {
    return base * (180 / math.pi);
  }

  @override
  Unit newInstance([num? value]) {
    return Degree(value);
  }

  @override
  Unit Function() tearOff() {
    return Degree.new;
  }
}
