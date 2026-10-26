part of '../../dart_unitz.dart';

/// {@template dart_unitz.Month}
/// The month, standard symbol: mo,
/// is a unit of time equal to 2629746 seconds (average month length).
///
/// https://en.wikipedia.org/wiki/Month
/// {@endtemplate}
class Month extends Time {
  /// {@macro dart_unitz.Month}
  Month([super.value]);

  @override
  String get name => 'Month';

  @override
  String get pluralName => 'Months';

  @override
  String get symbol => 'mo';

  @override
  num get factor => 2629746;

  @override
  num toBase() {
    return value * factor;
  }

  @override
  num fromBase(num base) {
    return base / factor;
  }

  @override
  Unit instance([Object? value]) {
    return Month(value);
  }
}
