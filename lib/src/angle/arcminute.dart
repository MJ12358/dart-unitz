part of dart_unitz;

/// A minute of arc, arcminute, arc minute, or minute arc,
/// denoted by the symbol ′, is a unit of angular measurement equal to 1/60 of one degree
///
/// https://en.wikipedia.org/wiki/Minute_and_second_of_arc
class ArcMinute extends Angle {
  ArcMinute([super.value]);

  @override
  String get name => 'Arc Minute';

  @override
  String get pluralName => 'Arc Minutes';

  @override
  String get symbol => "'";

  @override
  Unit toBase() {
    final num result = value * math.pi / (60 * 180);
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = base.value * (60 * 180) / math.pi;
    return ArcMinute(result);
  }

  @override
  Unit newInstance([num? value]) {
    return ArcMinute(value);
  }

  @override
  Unit Function() tearOff() {
    return ArcMinute.new;
  }
}
