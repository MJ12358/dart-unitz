part of dart_unitz;

class Byte extends Information {
  Byte([super.value]);

  @override
  String get name => 'Byte';

  @override
  String get pluralName => 'Bytes';

  @override
  String get symbol => 'B';

  @override
  num toBase() {
    return value / 8;
  }

  @override
  num fromBase(num base) {
    return base * 8;
  }

  @override
  Unit newInstance([Object? value]) {
    return Byte(value);
  }
}
