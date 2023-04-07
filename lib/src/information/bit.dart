part of dart_unitz;

class Bit extends Information {
  Bit([super.value]);

  @override
  String get name => 'Bit';

  @override
  String get pluralName => 'Bits';

  @override
  String get symbol => 'b';

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num base) {
    return base;
  }

  @override
  Unit newInstance([Object? value]) {
    return Bit(value);
  }
}
