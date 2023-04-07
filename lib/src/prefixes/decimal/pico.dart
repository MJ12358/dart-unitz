part of dart_unitz;

class Pico extends DecimalPrefix {
  @override
  String get name => 'pico';

  @override
  num get power => 1e-12;

  @override
  String get symbol => 'p';

  @override
  String get word => 'trillionth';

  @override
  String get pluralWord => 'trillionths';
}
