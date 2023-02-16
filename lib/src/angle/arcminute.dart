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
  num toBase() {
    return value * math.pi / (60 * 180);
  }

  @override
  num fromBase(num base) {
    return base * (60 * 180) / math.pi;
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
