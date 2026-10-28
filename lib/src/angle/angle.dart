part of '../../dart_unitz.dart';

/// {@template dart_unitz.Angle}
/// The base unit for [Angle] is the [Radian].
///
/// https://en.wikipedia.org/wiki/Angle
/// {@endtemplate}
abstract class Angle extends Unit {
  /// {@macro dart_unitz.Angle}
  Angle([super.value]);

  @override
  Unit get base => Radian();

  @override
  num toBase() {
    return (value * math.pi) / scale;
  }

  @override
  num fromBase(num base) {
    return (base * scale) / math.pi;
  }

  @override
  Type get prefixType => NullPrefix;

  /// A list of all available [Angle] units.
  static final List<Angle> values = <Angle>[
    ArcMinute(),
    ArcSecond(),
    Degree(),
    Gradian(),
    Radian(),
  ];
}
