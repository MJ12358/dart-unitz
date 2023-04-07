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
  num toBase() {
    return (value - 7.5) * (40 / 21) + 273.15;
  }

  @override
  num fromBase(num base) {
    return (base - 273.15) * (21 / 40) + 7.5;
  }

  @override
  Unit newInstance([Object? value]) {
    return Romer(value);
  }
}
