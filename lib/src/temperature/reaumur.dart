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
  String get symbol => '°Ré';

  @override
  Unit toBase() {
    final num result = value * 5 / 4 + 273.15;
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = (base.value - 273.15) * (4 / 5);
    return Reaumur(result);
  }

  @override
  Unit newInstance([num? value]) {
    return Reaumur(value);
  }
}
