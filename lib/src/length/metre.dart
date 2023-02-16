part of dart_unitz;

/// The metre, symbol m, is the primary unit of length
/// in the International System of Units (SI)
///
/// https://en.wikipedia.org/wiki/Metre
class Metre extends Length {
  Metre([super.value]);

  @override
  String get name => 'Metre';

  @override
  String get pluralName => 'Metres';

  @override
  String get symbol => 'm';

  @override
  Unit toBase() {
    return Metre(value);
  }

  @override
  Unit fromBase(Unit base) {
    return Metre(base.value);
  }

  @override
  Unit newInstance([num? value]) {
    return Metre(value);
  }

  @override
  Unit Function() tearOff() {
    return Metre.new;
  }
}
