part of dart_unitz;

class Tera extends DecimalPrefix {
  @override
  String get name => 'tera';

  @override
  num get power => 1e+12;

  @override
  String get symbol => 'T';

  @override
  String get word => 'trillion';

  @override
  String get pluralWord => 'trillions';
}
