part of dart_unitz;

class Mebi extends BinaryPrefix {
  @override
  String get name => 'mebi';

  @override
  num get power => 1.048576e+6;

  @override
  String get symbol => 'Mi';

  @override
  String get word => 'million';

  @override
  String get pluralWord => 'millions';
}
