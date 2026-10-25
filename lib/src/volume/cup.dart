part of '../../dart_unitz.dart';

/// {@template dart_unitz.Cup}
/// The cup, symbol cup, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Cup_(unit)
/// {@endtemplate}
class Cup extends Volume {
  /// {@macro dart_unitz.Cup}
  Cup([super.value]);

  @override
  String get name => 'Cup';

  @override
  String get pluralName => 'Cups';

  @override
  String get symbol => 'cup';

  @override
  num get factor => 0.00023658823648491;

  @override
  num toBase() {
    return value * factor;
  }

  @override
  num fromBase(num base) {
    return base / factor;
  }

  @override
  Unit newInstance([Object? value]) {
    return Cup(value);
  }
}
