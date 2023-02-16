part of dart_unitz;

/// The Rømer scale also known as Romer or Roemer,
/// is a temperature scale, based on the freezing point
/// of pure water being 7.5 degrees and the boiling point
/// of water as 60 degrees.
///
/// https://en.wikipedia.org/wiki/Romer_scale
class Romer extends Temperature {
  Romer([super.value]);

  @override
  String get name => 'Rømer';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°Rø';

  @override
  Unit toBase() {
    final num result = (value - 7.5) * (40 / 21) + 273.15;
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = (base.value - 273.15) * (21 / 40) + 7.5;
    return Romer(result);
  }

  @override
  Unit newInstance([num? value]) {
    return Romer(value);
  }

  @override
  Unit Function() tearOff() {
    return Romer.new;
  }
}
