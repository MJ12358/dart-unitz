part of dart_unitz;

/// {@template dart_unitz.Reaumur}
/// The Réaumur scale, also known as the "octogesimal division",
/// is a temperature scale for which the melting and boiling points
/// of water are defined as 0 and 80 degrees respectively.
///
/// https://en.wikipedia.org/wiki/Reaumur_scale
/// {@endtemplate}
class Reaumur extends Temperature {
  /// {@macro dart_unitz.Reaumur}
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
  Unit newInstance([Object? value]) {
    return Reaumur(value);
  }
}
