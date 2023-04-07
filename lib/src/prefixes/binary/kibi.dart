part of dart_unitz;

class Kibi extends BinaryPrefix {
  @override
  String get name => 'kibi';

  @override
  num get power => 1.024e+3;

  @override
  String get symbol => 'Ki';

  @override
  String get word => 'thousand';

  @override
  String get pluralWord => 'thousands';
}
