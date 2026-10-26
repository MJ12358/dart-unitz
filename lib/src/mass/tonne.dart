part of '../../dart_unitz.dart';

/// {@template dart_unitz.Tonne}
/// The tonne, symbol t, is a unit of mass.
///
/// https://en.wikipedia.org/wiki/Tonne
/// {@endtemplate}
class Tonne extends Mass {
  /// {@macro dart_unitz.Tonne}
  Tonne([super.value]);

  @override
  String get name => 'Tonne';

  @override
  String get pluralName => 'Tonnes';

  @override
  String get symbol => 't';

  @override
  num get factor => 1000;

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
    return Tonne(value);
  }
}
