part of dart_unitz;

/// The Réaumur scale, also known as the "octogesimal division",
/// is a temperature scale for which the melting and boiling points
/// of water are defined as 0 and 80 degrees respectively.
///
/// https://en.wikipedia.org/wiki/Reaumur_scale
class Reaumur extends Temperature {
  Reaumur([super.value]);

  @override
  String get name => 'Réaumur';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°Ré';

  @override
  num toBase() {
    return value * 5 / 4 + 273.15;
  }

  @override
  num fromBase(num base) {
    return (base - 273.15) * (4 / 5);
  }

  @override
  Unit newInstance([num? value]) {
    return Reaumur(value);
  }

  @override
  Unit Function() tearOff() {
    return Reaumur.new;
  }
}
